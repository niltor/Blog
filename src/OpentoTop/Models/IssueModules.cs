using OpentoTop.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
/// <summary>
/// 问题所属分类，如.net
/// </summary>
	public class IssueModules
	{
		[Key]
		public int IssueModuleId { get; set; }

		public int Name { get; set; }

		public List<IssueTypes> IssueTyeps { get; set; }

		public List<Issues> Issues { get; set; }
	}
}
