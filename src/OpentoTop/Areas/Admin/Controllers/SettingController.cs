using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using OpentoTop.Data;
using OpentoTop.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace OpentoTop.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles ="Admin")]
    public class SettingController : Controller
    {
        private readonly ApplicationDbContext _context;

        public SettingController(ApplicationDbContext context)
        {
            _context = context;
        }


        // GET: /<controller>/
        public IActionResult Index()
        {
            //default:add nav
            var modules = _context.Modules.ToList();
            return View(modules);
        }

        [HttpPost]
        public IActionResult AddNav([Bind("Name,Url,Rank")] Modules modules) {
            
            if (ModelState.IsValid)
            {
                modules.Status = "default";
                _context.Modules.Add(modules);
                var re=_context.SaveChanges();
                if (re < 0)
                {
                    ModelState.AddModelError(string.Empty, "添加失败");
                }else
                {
                    return RedirectToAction("Index");
                }
            }
            return View();
        }

        [HttpGet]
        public IActionResult DelNav(int id)
        {
            var module = _context.Modules.SingleOrDefault(m => m.ModulesId == id);
            if (module != null)
            {
                _context.Modules.Remove(module);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return NotFound("no id");
        }
    }
}
