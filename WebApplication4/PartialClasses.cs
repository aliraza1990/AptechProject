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
    [MetadataType(typeof(DaysMetadata))]
    public partial class dayss
    {
    }
    [MetadataType(typeof(TimingMetadata))]
    public partial class timing
    {
    }
    [MetadataType(typeof(BatchMetaData))]
    public partial class batch
    {
    }
    [MetadataType(typeof(CampusMetaData))]
    public partial class campus
    {
    }
    [MetadataType(typeof(CourseOfferedMeteData))]
    public partial class coursesOffered
    {
    }
    [MetadataType(typeof(curriculumMetaData))]
    public partial class curriculum
    {
    }
    [MetadataType(typeof(UsermetaData))]
    public partial class user
    {
    }
    [MetadataType(typeof(WalkinMetaData))]
    public partial class walkin
    {
    }
}