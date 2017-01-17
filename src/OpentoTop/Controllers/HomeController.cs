using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using OpentoTop.Data;
using OpentoTop.Models;

namespace OpentoTop.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index(string type)
        {
            //新闻分类
            ViewBag.NewsType = _context.News.Select(n => n.Type).Distinct().ToList();
            //新闻 
            var news = _context.News.AsQueryable();
            //最新博文

            if (!string.IsNullOrEmpty(type))
            {
                news = news.Where(n => n.Type == type);
            }

            ViewBag.News = news.Take(20).ToList();

            ViewBag.NewBlogs = _context.Blogs
                .Where(m => m.Status == "2")
                .OrderByDescending(m => m.CreateTime)
                .ThenByDescending(m => m.ViewNum)
                .Take(12)
                .ToList();

            //最新问题
            ViewBag.NewIssues = _context.Issues
                .OrderByDescending(m => m.CreateTime)
                .ThenByDescending(m => m.ViewNum)
                .Take(12);

            return View();
        }

        public IActionResult NewsUrl(string url)
        {
            return Redirect(url);
        }

        public IActionResult About()
        {
            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
