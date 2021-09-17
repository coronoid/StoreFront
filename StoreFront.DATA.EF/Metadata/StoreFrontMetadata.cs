using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;//added for metadata and validation

namespace StoreFront.DATA.EF//.Metadata - name must match namespace of classes these partial classes will buddy up with.
{
    public class GameMetadata
    {

        [Required]
        [StringLength(100)]
        public string GameTitle { get; set; }

        [Required]
        public Nullable<int> PlatformID { get; set; }

        [Required]
        [DisplayFormat(DataFormatString = "{0:c}")]
        public Nullable<decimal> Price { get; set; }

        [Required]
        public Nullable<int> UnitsSold { get; set; }

        [Required]
        [Display(Name = "Released")]
        [DisplayFormat(DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> ReleaseDate { get; set; }

        [Required]
        public string CompanyName { get; set; }

        [Required]
        public string Status { get; set; }

        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Display(Name = "Department")]
        public string DeptName { get; set; }

        [Display(Name = "Company")]
        public string Name { get; set; }

    }
}
