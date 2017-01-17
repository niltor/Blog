using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using OpentoTop.Data;
using OpentoTop.Models;
using Microsoft.AspNetCore.Authorization;
using System;
using Microsoft.AspNetCore.Identity;
using OpentoTop.Lib;
using Microsoft.AspNetCore.Hosting;

namespace OpentoTop.Controllers.Admin
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class BlogsController : GTController
    {

        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHostingEnvironment _env;


        public BlogsController(
            ApplicationDbContext context,
            UserManager<ApplicationUser> userManager, IHostingEnvironment env)
        {

            _userManager = userManager;
            _context = context;
            _env = env;
        }

        #region blog
        // GET: Blogs
        public async Task<IActionResult> Index()
        {
            return View(await _context.Blogs.ToListAsync());
        }

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
                    _context.Update(blog, new string[] { "Content", "Title", "Type", "UpdateTime" });
                    //_context.Attach(blog);
                    //_context.Entry(blog).Property("Content").IsModified = true;
                    //_context.Entry(blog).Property("Title").IsModified = true;
                    //_context.Entry(blog).Property("Type").IsModified = true;
                    //_context.Entry(blog).Property("UpdateTime").IsModified = true;
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
                return Success("/Admin/Blogs/Index");
            }
            return Error();
        }

        // GET: Blogs/Delete/5
        public async Task<IActionResult> Delete(int? id)
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

            return View(blogs);
        }

        // POST: Blogs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var blogs = await _context.Blogs.SingleOrDefaultAsync(m => m.BlogId == id);
            _context.Blogs.Remove(blogs);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }
        private bool BlogsExists(int id)
        {
            return _context.Blogs.Any(e => e.BlogId == id);
        }
        #endregion

        #region BlogTypes
        [HttpGet]
        public IActionResult Types()
        {
            ViewBag.Modules = _context.Modules.ToList();
            ViewBag.BlogTypes = _context.BlogTypes.Include(b => b.Modules).ToList();
            return View();
        }

        [HttpPost]
        public IActionResult AddBlogType(int ModulesId,string Name)
        {
            var blogType = new BlogTypes
            {
                Name = Name,
                Modules = _context.Modules.SingleOrDefault(m => m.ModulesId == ModulesId)
            };
            if (ModelState.IsValid)
            {
                _context.BlogTypes.Add(blogType);
                var re = _context.SaveChanges();
                if (re > 0)
                {
                    return RedirectToAction("Types");
                }
            }

            return View();
        }
        [HttpGet]
        public IActionResult DelBlogType(int id)
        {
            var blogType = _context.BlogTypes.SingleOrDefault(m => m.BlogTypeId == id);

            if (blogType != null)
            {
                _context.Remove(blogType);
                if (_context.SaveChanges() > 0)
                {
                    return RedirectToAction("Types");
                }
            }else
            {
                return NotFound("no id");
            }
            return View();
        }

        #endregion
    }
}
