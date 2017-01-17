using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models.AccountViewModels
{
    public class LoginViewModel
    {
        [Required]
        [EmailAddress]
		[Display(Name ="邮箱")]
        public string Email { get; set; }

        [Required]
		[Display(Name ="密码")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
		
        [Display(Name = "记住我的登录")]
        public bool RememberMe { get; set; }
    }
}
