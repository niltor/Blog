using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System.Collections.Generic;
using System;

namespace OpentoTop.Models {
	// Add profile data for application users by adding properties to the ApplicationUser class
	public class ApplicationUser : IdentityUser
	{
		public string NickName { get; set; }
		public DateTime CreateTime { get; set; }

		public DateTime LastLoginTime { get; set; }
		public List<Blogs> Blogs { get; set; }


		public List<IssueAnswers> IssueAnswers { get; set; }

		public List<Issues> Issues { get; set; }
	}
}
