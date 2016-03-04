using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace MovieWebAPI.Models
{
    /// <summary>
    /// Class implements the properties related to Movie Details
    /// </summary>
    [DataContract]
    public class Ratings
    {
        /// <summary>
        /// Gets or Sets Movie ID
        /// </summary>
        [DataMember]
        public int MovieID { get; set; }
        /// <summary>
        /// Gets or Sets Movie ID
        /// </summary>
        [DataMember]
        public int UserID { get; set; }
        /// <summary>
        /// <summary>
        /// Gets or Sets Movie ID
        /// </summary>
        [DataMember]
        public int Rating { get; set; }       
    }
}