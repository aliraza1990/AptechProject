using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    //--------------------------------Role---------------------
    public class RoleMetadata
    {
        [Display(Name = "ID")]
        public int r_id;
        [Display(Name = "Role")]
        [Required(ErrorMessage = "* Role Is Mandatory")]
        public string r_name;
    }
    //--------------------------------User--------------------
    public class userMetadata
    {
        [Display(Name = "ID")]
        public int u_id { get; set; }

        [Display(Name = "Name")]
        [Required(ErrorMessage = "* Name is Mandatory")]
        [StringLength(20, MinimumLength = 5, ErrorMessage = "First Name Should be min 5 and max 20 length")]
        public string u_name { get; set; }

        [Display(Name = "Username")]
        [Required(ErrorMessage = "* UserName is Mandatory")]
        [StringLength(20, MinimumLength = 5, ErrorMessage = "First Name Should be min 5 and max 20 length")]
        public string u_username { get; set; }

        [Display(Name = "Password")]
        [Required(ErrorMessage = "Password Required")]
        public string u_pass { get; set; }

        [Display(Name = "Phone")]
        [Required(ErrorMessage = "Phone Number Required!")]
        public string u_phone { get; set; }

        [Display(Name = "Email")]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Please Provide Valid Email")]
        public string u_email { get; set; }

        public int u_roleID { get; set; }

        public int u_departID { get; set; }

        [Display(Name = "Address")]
        [Required(ErrorMessage = "EmailRequired!")]
        public string u_address { get; set; }
    }

    //------------------------------Departments----------
    public class departmentMetadata
    {
        [Display(Name = "ID")]
        public int d_id { get; set; }

        [Display(Name = "Department")]
        [Required]
        public string d_name { get; set; }
    }

    //-----------------------------Campus---------------
    public  class campusMetadata
    {
        [Display(Name = "ID")]
        public int c_id { get; set; }

        [Display(Name = "Name")]
        [Required]
        public string c_name { get; set; }

        [Display(Name = "Address")]
        [Required]
        public string c_address { get; set; }

        [Display(Name = "Phone")]
        [Required]
        public string c_phone { get; set; }

    }
    //-----------------------------Curriculum----------

         public class curriculumMetadata
    {

        [Display(Name = "ID")]
        public int c_id { get; set; }

        [Display(Name = "Curriculum Name")]
        [Required]
        public string c_name { get; set; }

        [Display(Name = "Code")]
        [Required]
        public string c_code { get; set; }
  }
   //-----------------------MEdia Format-------------
   public class mediaFormatMetadata
    {
        [Display(Name = "ID")]
        public int mf_id { get; set; }

        [Display(Name = "Media Format")]
        [Required]
        public string mf_name { get; set; }

    }

   
}