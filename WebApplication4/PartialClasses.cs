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
}