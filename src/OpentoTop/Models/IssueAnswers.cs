using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
	/// <summary>
	/// 答案
	/// </summary>
	public class IssueAnswers
	{
		[Key]
		public int IssueAnswerId { get; set; }


		public ApplicationUser User { get; set; }

		[MaxLength(10240)]
		public string Content { get; set; }

		public DateTime CreateTime { get; set; }

		//最佳 有效等
		public string Status { get; set; }

		public Issues Issues { get; set; }

	}
}
