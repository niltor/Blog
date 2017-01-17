using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
	/// <summary>
	/// 问题类，用户提问内容
	/// </summary>
	public class Issues
	{
		[Key]
		public int IssueId { get; set; }

		[MaxLength(64)]
		public string Title { get; set; }

		[MaxLength(2048)]
		public string Content { get; set; }

		public ApplicationUser User { get; set; }

		public DateTime CreateTime { get; set; }


		//已解决，已关闭等状态
		public string Status { get; set; }


		public int ViewNum { get; set; }

		public IssueModules IssueModules { get; set; }

		public IssueTypes IssueTypes { get; set; }

		public List<IssueAnswers> IssueAnswers { get; set; }

	}
}
