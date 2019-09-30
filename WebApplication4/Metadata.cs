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
        public string r_name;
    }
}