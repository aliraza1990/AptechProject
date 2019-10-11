using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    [MetadataType(typeof(RoleMetadata))]
    public partial class role
    {
    }

    [MetadataType(typeof(userMetadata))]
    public partial class user
    {
    }

    [MetadataType(typeof(departmentMetadata))]
    public partial class department
    {
    }

    [MetadataType(typeof(campusMetadata))]
    public partial class campus
    {
    }


    [MetadataType(typeof(curriculumMetadata))]
    public partial class curriculum
    {
    }

    [MetadataType(typeof(mediaFormatMetadata))]
    public partial class mediaFormat
    {

    }

   
}