using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using OpentoTop.Controllers;
using Microsoft.AspNetCore.Authorization;
using OpentoTop.Models;
using OpentoTop.Data;
using Microsoft.EntityFrameworkCore;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace OpentoTop.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles ="Admin")]
	public class IssuesController : GTController
	{
		private readonly ApplicationDbContext _context;
		public IssuesController(ApplicationDbContext context) {
			_context = context;
		}
		


		// GET: /<controller>/
		public IActionResult Index()
		{
			return View();
		}

		[HttpGet]
		public IActionResult AddIssueModule(IssueModules model) {

			if (ModelState.IsValid)
			{
				try {
					_context.IssueModules.Add(model);
					int num = _context.SaveChanges();
					return Success<string>("success");
				}catch(DbUpdateException ex) {
					return Error(ex.ToString());
				}
				

				
			}else {
				return Error("invalid data");
			}

		}


	}
}
