using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{

	/// <summary>
	/// 问题类型
	/// </summary>
	public class IssueTypes
	{
		[Key]
		public int IssueTypeId { get; set; }
		[MaxLength(16)]
		public string Name { get; set; }
		public IssueModules IssueModules { get; set; }

		public List<Issues> Issues { get; set; }

	}
}
