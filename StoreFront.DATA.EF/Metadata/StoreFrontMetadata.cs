using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;//added for metadata and validation

namespace StoreFront.DATA.EF//.Metadata - name must match namespace of classes these partial classes will buddy up with.
{
    [MetadataType(typeof(GameMetadata))]
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
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        public partial class Department
        {
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
            public Department()
            {
                this.Employees = new HashSet<Employee>();
            }

            public int DeptID { get; set; }
            [Required]
            [Display(Name = "Department")]
            public string DeptName { get; set; }

            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
            public virtual ICollection<Employee> Employees { get; set; }
        }

        public partial class GameStatus
        {
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
            public GameStatus()
            {
                this.Games = new HashSet<Game>();
            }

            public int GameStatusID { get; set; }
            [Required]
            public string Status { get; set; }

            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
            public virtual ICollection<Game> Games { get; set; }
        }
       
        public partial class Platform
        {
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
            public Platform()
            {
                this.Games = new HashSet<Game>();
            }

            public int PlatformID { get; set; }
            [Display(Name = "Platform")]
            public string Name { get; set; }

            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
            public virtual ICollection<Game> Games { get; set; }
        }
    }
}
