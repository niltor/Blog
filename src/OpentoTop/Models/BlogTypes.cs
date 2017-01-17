using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
    public class BlogTypes
    {
        [Key]
        public int BlogTypeId { get; set; }
        [MaxLength(32)]
        public string Name { get; set; }

        public Modules Modules { get; set; }
    }
}
