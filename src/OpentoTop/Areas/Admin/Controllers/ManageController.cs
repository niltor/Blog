using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using OpentoTop.Models;
using OpentoTop.Models.AccountViewModels;
using System.Collections.Generic;
using System;

namespace OpentoTop.Controllers.Admin {
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class ManageController : Controller {
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        public ManageController(
            UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager,
            SignInManager<ApplicationUser> signInManager)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _signInManager = signInManager;
        }


        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        public async Task<IActionResult> Login(string returnUrl)
        {
			ViewData["ReturnUrl"] = returnUrl;
			//Add Admin Role
			if(!await _roleManager.RoleExistsAsync("Admin"))
			{
				var newRole = new IdentityRole
				{
					Name = "Admin",
				};
				await _roleManager.CreateAsync(newRole);
			}

			//If not exist Admin User, add default account as "admin@msdev.cc/MSDev.cc"
			var identityRole = new IdentityRole("Admin");
			var userRoles = identityRole.Users;
			if(0 == userRoles.Count)
			{
				var newUser = new ApplicationUser
				{
					UserName = "admin@msdev.cc",
					Email = "admin@msdev.cc",
					NickName = "Admin"
				};
				var result = await _userManager.CreateAsync(newUser, "MSDev.cc");
				if(result.Succeeded)
				{
					await _userManager.AddToRoleAsync(newUser, "Admin");
				}
			}
			return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
				var user=await _userManager.FindByEmailAsync(model.Email);

				if (await _userManager.IsInRoleAsync(user, "Admin"))
                {
                    var result = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, lockoutOnFailure: false);
                    if (result.Succeeded)
                    {

						user.LastLoginTime = DateTime.Now;
						await _userManager.UpdateAsync(user);
                        return Redirect("Index");
                    }
                    if (result.IsLockedOut)
                    {
                        return View("Lockout");
                    } else
                    {
                        ModelState.AddModelError(string.Empty, "Wrong Email or Password");
                        return View(model);
                    }
                } else
                {
                    ModelState.AddModelError(string.Empty, "Illegal user.");
                }
                return View(model);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> LogOff()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction("Login", "Manage");
        }

    }
}