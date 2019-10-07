using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    public class RoleMetadata
    {
        [Display(Name = "ID")]
        public int r_id;
        [Display(Name = "Role")]
        [Required(ErrorMessage = "* Role Required")]
        public string r_name;
    }
    public class DaysMetadata
    {
        public byte d_id;
        [Display(Name ="Day")]
        [Required(ErrorMessage ="* Day Required")]
        public string d_name;
    }
    public class TimingMetadata
    {
        public byte t_id;
        [Display(Name = "Timing")]
        [Required(ErrorMessage = "* Timing Required")]
        public string t_name;
    }

}