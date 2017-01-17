using System;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using OpentoTop.Data;
using OpentoTop.Models;

namespace OpentoTop.Controllers.Admin {
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class UsersController : GTController {
		private readonly ApplicationDbContext _context;
		private readonly RoleManager<IdentityRole> _roleManager;
		private readonly UserManager<ApplicationUser> _userManager;
        public UsersController(ApplicationDbContext context, RoleManager<IdentityRole> roleManager, UserManager<ApplicationUser> userManager)
		{
			_context = context;
			_roleManager = roleManager;
			_userManager = userManager;
		}

		// GET: Users
		public async Task<IActionResult> Index(string type = "RegUser")
		{
			var users=await _userManager.GetUsersInRoleAsync(type);
			return View(users);
		}

		// GET: Users/Details/5
		public async Task<IActionResult> Details(string id)
		{
			if(id == null)
			{
				return NotFound();
			}

			var applicationUser = await _context.ApplicationUser.SingleOrDefaultAsync(m => m.Id == id);
			if(applicationUser == null)
			{
				return NotFound();
			}

			return View(applicationUser);
		}

		// GET: Users/Create
		public IActionResult Create()
		{
			return View();
		}

		// POST: Users/Create
		// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
		// more details see http://go.microsoft.com/fwlink/?LinkId=317598.
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> Create([Bind("Id,AccessFailedCount,ConcurrencyStamp,Email,EmailConfirmed,LockoutEnabled,LockoutEnd,NickName,NormalizedEmail,NormalizedUserName,PasswordHash,PhoneNumber,PhoneNumberConfirmed,SecurityStamp,TwoFactorEnabled,UserName")] ApplicationUser applicationUser)
		{
			if(ModelState.IsValid)
			{
				_context.Add(applicationUser);
				await _context.SaveChangesAsync();
				return RedirectToAction("Index");
			}
			return View(applicationUser);
		}

		// GET: Users/Edit/5
		public async Task<IActionResult> Edit(string id)
		{
			if(id == null)
			{
				return NotFound();
			}

			var applicationUser = await _context.ApplicationUser.SingleOrDefaultAsync(m => m.Id == id);
			if(applicationUser == null)
			{
				return NotFound();
			}
			return View(applicationUser);
		}

		// POST: Users/Edit/5
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> Edit(string id, string rolename,string passwordhash)
		{
			//get user
			var user=await _userManager.FindByIdAsync(id);
			//select old role and remove it 
			var oldRole=await _userManager.GetRolesAsync(user);
			await _userManager.RemoveFromRolesAsync(user, oldRole);
			//add new role
			var result=await _userManager.AddToRoleAsync(user, rolename);

            // edit password
            var removeRe=await _userManager.RemovePasswordAsync(user);
            if (removeRe.Succeeded)
            {
                await _userManager.AddPasswordAsync(user, passwordhash);
            }else
            {
                return NotFound("reset failed");

            }
            if (result.Succeeded)
			{
				return View(user);
			}
			return RedirectToAction("Index");

		}

		// GET: Users/Delete/5
		public async Task<IActionResult> Delete(string id)
		{
			if(id == null)
			{
				return NotFound();
			}

			var applicationUser = await _context.ApplicationUser.SingleOrDefaultAsync(m => m.Id == id);
			if(applicationUser == null)
			{
				return NotFound();
			}

			return View(applicationUser);
		}

		// POST: Users/Delete/5
		[HttpPost, ActionName("Delete")]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> DeleteConfirmed(string id)
		{
			var applicationUser = await _context.ApplicationUser.SingleOrDefaultAsync(m => m.Id == id);
			_context.ApplicationUser.Remove(applicationUser);
			await _context.SaveChangesAsync();
			return RedirectToAction("Index");
		}

		private bool ApplicationUserExists(string id)
		{
			return _context.ApplicationUser.Any(e => e.Id == id);
		}
	}
}
