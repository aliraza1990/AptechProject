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
    public class BatchMetaData
    {
        public long b_id;
        [Display(Name = "Batch Name")]
        [Required(ErrorMessage = "* Batch Name Required")]
        public string b_name;
        [Display(Name = "Batch Day")]
        [Required(ErrorMessage = "* Batch Day Required")]
        public byte b_dayID;
        [Display(Name = "Batch Timing")]
        [Required(ErrorMessage = "* Batch Timing Required")]
        public byte b_timID;
        [Display(Name = "Faclty Name")]
        [Required(ErrorMessage = "* Faclty Name Required")]
        public int b_facID;
        [Display(Name = "Status")]
        [Required(ErrorMessage = "* Status Required")]
        public byte b_status;
        [Display(Name = "Batch Start Date")]
        [Required(ErrorMessage = "* Batch Start Date Required")]
        public System.DateTime b_startDate;

        
    }
    public class CampusMetaData
    {
        public int c_id;
        [Display(Name = "Campus Name")]
        [Required(ErrorMessage = "*Campus Name Required")]
        public string c_name;
        [Display(Name = "Address")]
        [Required(ErrorMessage = "* Address Required")]
        public string c_address;
        [Display(Name = "Phone")]
        [Required(ErrorMessage = "*Phone Required")]
        [DataType(DataType.PhoneNumber)]
        public string c_phone;
    }
    public class CourseOfferedMeteData
    {
        public int co_id;
        [Display(Name = "Course Name")]
        [Required(ErrorMessage = "*Coures Name Required")]
        public string co_name;
    }
    public class curriculumMetaData
    {
        public int c_id;
        [Display(Name = "Curriculum")]
        [Required(ErrorMessage = "*Curriculum Required")]
        public string c_name;
        [Display(Name = "Code")]
        [Required(ErrorMessage = "*Code Required")]
        public string c_code;
    }
    public class UsermetaData
    {
        public int u_id;
        [Display(Name = "Name")]
        [Required(ErrorMessage = "*Name Required")]
        public string u_name;
        [Display(Name = "Username")]
        [Required(ErrorMessage = "*Username Required")]
        public string u_username;
        [Display(Name = "Password")]
        [Required(ErrorMessage = "*Password Required")]
        [DataType(DataType.Password)]
        public string u_pass;
        [Display(Name = "Phone")]
        [Required(ErrorMessage = "*Phone Required")]
        [DataType(DataType.PhoneNumber)]
        public string u_phone;
        [Display(Name = "Email")]
        [Required(ErrorMessage = "*Email Required")]
        [DataType(DataType.EmailAddress)]
        public string u_email;
        [Display(Name = "User Role")]
        [Required(ErrorMessage = "*User Role Required")]
        public int u_roleID;
        [Display(Name = "User Department")]
        [Required(ErrorMessage = "*User Department Required")]
        public int u_departID;
        [Display(Name = "Address")]
        [Required(ErrorMessage = "*Address Required")]
        public string u_address;
    }
    public class WalkinMetaData
    {
        public long w_id;
        [Display(Name = "Date Time")]
        [Required(ErrorMessage = "*date Time Required")]
        public System.DateTime w_datetime;
        [Display(Name = "Full Name")]
        [Required(ErrorMessage = "*Full Name Required")]
        public string w_fullname;
        [Display(Name = "Phone 1")]
        [Required(ErrorMessage = "*Phone 1 Required")]
        [DataType(DataType.PhoneNumber)]
        public string w_phone1;
        [Display(Name = "Phone 2")]
        [Required(ErrorMessage = "*Phone 2 Required")]
        [DataType(DataType.PhoneNumber)]
        public string w_phone2;
        [Display(Name = "Email")]
        [Required(ErrorMessage = "*Email Required")]
        [DataType(DataType.EmailAddress)]
        public string w_email;
        [Display(Name = "Department")]
        [Required(ErrorMessage = "*Department Required")]
        public Nullable<System.DateTime> w_dob;
        [Display(Name = "CoursesOffered")]
        [Required(ErrorMessage = "*CoursesOffered Required")]
        public int w_coID;
        [Display(Name = "MediaFormat")]
        [Required(ErrorMessage = "*MediaFormat Required")]
        public int w_mfID;
        [Display(Name = "User")]
        [Required(ErrorMessage = "*User Required")]
        public int w_userID;
        [Display(Name = "SerialNo")]
        [Required(ErrorMessage = "*SerialNo Required")]
        public string w_serialNo;
        [Display(Name = "Admission Taken")]
        [Required(ErrorMessage = "*Admission Taken Required")]
        public byte w_isAdmissionTaken;
    }

}