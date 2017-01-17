using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models {
	public class Blogs {
		[Key]
		public int BlogId { get; set; }
		[MaxLength(64)]
		[Required(ErrorMessage = "请填写标题")]
		public string Title { get; set; }
		[MaxLength(512)]
		[Required(ErrorMessage = "请填写描述")]
		public string Description { get; set; }
		[MaxLength(10240)]
		[Required(ErrorMessage = "请撰写博文内容")]
		public string Content { get; set; }
		[MaxLength(128)]
		public string Attribute { get; set; }

		public DateTime CreateTime { get; set; }
		public DateTime UpdateTime { get; set; }    

		public string Author { get; set; }
		[MaxLength(128)]
		public string Tags { get; set; }
		[MaxLength(32)]
		[Required]
		public string Type { get; set; }

		//浏览量
		public int ViewNum { get; set; }
		
        [DefaultValue(2)]
		//状态 置顶、隐藏等
		public string Status { get; set; }

		public int ModuleId { get; set; }

		public ApplicationUser Users { get; set; }
	}
}
