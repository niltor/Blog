using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models.AccountViewModels {
	public class RegisterViewModel {
		[Required]
		[EmailAddress]
		[Display(Name = "邮箱")]
		public string Email { get; set; }
		[Required]
		[Display(Name = "昵称")]
		[StringLength(32, ErrorMessage = "{0} 长度在{2}-{1}之间", MinimumLength = 4)]
		[RegularExpression(@"^[\u4e00-\u9fa5a-zA-Z_]\w{3,32}$", ErrorMessage ="{0} 格式不正确，请不要使用非法字符")]
		public string NickName { get; set; }

		[Required]
		[StringLength(100, ErrorMessage = "{0} 长度在 {2}-{1} 之间", MinimumLength = 6)]
		[DataType(DataType.Password)]
		[Display(Name = "密码")]
		public string Password { get; set; }

		[DataType(DataType.Password)]
		[Display(Name = "确认密码")]
		[Compare("Password", ErrorMessage = "确认密码与密码不一致")]
		public string ConfirmPassword { get; set; }
	}
}
