using System;
using System.ComponentModel.DataAnnotations;

namespace OpentoTop.Models.BlogsViewModels {
    public class EditBlogViewModel
    {
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

        public DateTime UpdateTime
        {
            get {
                return DateTime.Now;
            }
            set { }
        }
        [MaxLength(32)]
        [Required]
        public string Type { get; set; }


    }
}
