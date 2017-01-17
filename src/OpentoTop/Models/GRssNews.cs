using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
    [Table("News")]
    class GRssNews
    {
        [Key]
        public int NewsId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Url { get; set; }
        public Nullable<System.DateTime> Datetime { get; set; }

    }
}
