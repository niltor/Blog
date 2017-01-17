using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using OpentoTop.Data;
using OpentoTop.Lib;
using OpentoTop.Models;
using OpentoTop.TagHelpers;

namespace OpentoTop.Controllers
{
    [Authorize(Roles = "Author")]
    public class BlogsController : GTController
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHostingEnvironment _env;

        public BlogsController(ApplicationDbContext context, UserManager<ApplicationUser> userManager, IHostingEnvironment env)
        {
            _context = context;
            _userManager = userManager;
            _env = env;
        }

        // GET: Blogs
        [AllowAnonymous]
        public IActionResult Index(int id = 1, string moduleName = "View", string type = "")
        {

            var module = _context.Modules.SingleOrDefault(m => m.Url == moduleName);

            var blogTypes = _context.BlogTypes.Where(m => m.Modules == module).ToList();


            var pageOption = new MyPagerOption
            {
                CurrentPage = id,
                PageSize = 12,
                RouteUrl = "/" + moduleName
            };

            var blogs = _context.Blogs.AsQueryable();

            if (!String.IsNullOrWhiteSpace(type))
            {
                blogs = blogs.Where(b => b.Type == type);
            }
            blogs = blogs.Where(b => b.ModuleId == module.ModulesId)
                .Where(b => b.Status == "2")
                .OrderByDescending(b => b.UpdateTime);
            pageOption.Total = blogs.Count();

            blogs = blogs.Skip((pageOption.CurrentPage - 1) * pageOption.PageSize)
                .Take(pageOption.PageSize);

            ViewBag.ModuleName = module.Name;
            ViewBag.BlogTypes = blogTypes;
            ViewBag.PagerOption = pageOption;
            return View(blogs.ToList());
        }

        [AllowAnonymous]
        public IActionResult Test()
        {
            return View();
        }

        [AllowAnonymous]
        // GET: Blogs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blogs = await _context.Blogs.SingleOrDefaultAsync(m => m.BlogId == id);
            if (blogs == null)
            {
                return NotFound();
            }
            //浏览量增加
            blogs.ViewNum += 1;
            _context.Blogs.Update(blogs);
            _context.SaveChanges();


            return View(blogs);
        }

        [HttpPost]
        public IActionResult Upload(string guid)
        {
            var file = Request.Form.Files.GetFile("editormd-image-file");
            var formUpload = new FormUpload();
            var msg = "/" + formUpload.SaveFile(file, _env.WebRootPath, guid);
            var jsonResult = new { message = msg, success = 1, url = msg };
            return Json(jsonResult);
        }

        [HttpGet]
        public async Task<IActionResult> Myblogs(int id = 1)
        {
            ApplicationUser user = await _userManager.GetUserAsync(User);

            var pageOption = new MyPagerOption
            {
                CurrentPage = id,
                PageSize = 12,
                RouteUrl = "/blogs/myblogs"
            };

            var blogs = _context.Blogs.Where(b => b.Users.Id == user.Id).OrderByDescending(m => m.UpdateTime).AsQueryable();

            pageOption.Total = blogs.Count();
            blogs = blogs.Skip((pageOption.CurrentPage - 1) * pageOption.PageSize).Take(pageOption.PageSize);
            ViewBag.PagerOption = pageOption;
            return View(blogs.ToList());
        }

        // GET: Blogs/Write
        public IActionResult Write()
        {
            ViewBag.BlogTypes = _context.BlogTypes.Include(m => m.Modules).
                OrderByDescending(m => m.Modules.ModulesId).
                ToList();
            return View();
        }

        // POST: Blogs/Write
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<JsonResult> Write(Blogs blog)
        {
            ApplicationUser user = await GetUser(_userManager);
            blog.Author = user.NickName;
            blog.CreateTime = DateTime.Now;
            blog.UpdateTime = DateTime.Now;
            blog.Users = user;
            if (ModelState.IsValid)
            {
                _context.Add(blog);
                _context.SaveChanges();
                return Success<string>("Index", "success");
            }
            var Msg = ModelState.Values.SelectMany(v => v.Errors).Select(v => v.ErrorMessage);
            return Error();
        }

        // GET: Blogs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blogs = await _context.Blogs.SingleOrDefaultAsync(m => m.BlogId == id);
            ViewBag.BlogTypes = _context.BlogTypes.Include(m => m.Modules).
                OrderByDescending(m => m.Modules.ModulesId).
                ToList();
            if (blogs == null)
            {
                return NotFound();
            }
            return View(blogs);
        }

        // POST: Blogs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Blogs blog)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    blog.UpdateTime = DateTime.Now;
                    _context.Update(blog, new string[] { "Content", "Title", "Type", "UpdateTime", "Description", "ModuleId", "Status" });

                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BlogsExists(blog.BlogId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return Success("/Blogs/Myblogs");
            }
            return Error();
        }

        [HttpGet]
        public IActionResult Delete(int id)
        {
            var blog = _context.Blogs.Single(m => m.BlogId == id);
            if (blog != null)
            {
                _context.Blogs.Remove(blog);
                if (_context.SaveChanges() > 0)
                {
                    return RedirectToAction("Myblogs");
                }
            }
            return NotFound("no id or del failed");
        }

        private bool BlogsExists(int id)
        {
            return _context.Blogs.Any(e => e.BlogId == id);
        }
    }
}
