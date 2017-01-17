using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Models
{
    public class Modules
    {
        public int ModulesId { get; set; }
        [MaxLength(32)]
        public string Name { get; set; }
        public int Rank { get; set; }
        [MaxLength(128)]
        public string Url { get; set; }

        [MaxLength(32)]
        public string Status { get; set; }

        public List<BlogTypes> BlogTypes { get; set; }

    }
}
