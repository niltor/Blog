using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using OpentoTop.Data;
using OpentoTop.Models;
using Newtonsoft.Json;
using System.Net.Http;
using System.Collections;

namespace OpentoTop.Controllers
{
	public class NewsController : Controller
	{
		private readonly ApplicationDbContext _context;

		public NewsController(ApplicationDbContext context)
		{
			_context = context;    
		}

		// GET: News
		public IActionResult Index()
		{
			return View (_context.News.ToList());
		}


		private bool NewsExists(int id)
		{
			return _context.News.Any(e => e.NewsId == id);
		}

        public IActionResult JumpUrl(string url)
        {
            return Redirect(url);
        }


        [HttpGet]
		public async Task<IActionResult> GetNews()
		{

			HttpClient hc = new HttpClient();

            string json = await hc.GetStringAsync("http://gress.azurewebsites.net/api/gress");
            json = json.Replace("\\",String.Empty);
            json = json.Substring(1, json.Length - 2);

            List<News> news = JsonConvert.DeserializeObject<List<News>>(json);

            //clear table news
            _context.Database.ExecuteSqlCommand("TRUNCATE TABLE News");
            
            _context.News.AddRange(news);
            int re=_context.SaveChanges();
            if (re > 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return new ObjectResult("failed") ;
		}

		[HttpPost]
		public  string Update(string news) {
			return news;
		}
	}

}
