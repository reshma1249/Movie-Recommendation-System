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
    public class MovieComment
    {
        /// <summary>
        /// Gets or Sets User ID
        /// </summary>
        [DataMember]
        public int UserID { get; set; }
        /// <summary>
        /// Gets or Sets Movie ID
        /// </summary>
        [DataMember]
        public int MovieID { get; set; }
        /// <summary>
        /// Gets or Sets User Name
        /// </summary>
        [DataMember]
        public string UserName { get; set; }
        /// <summary>
        /// Gets or Sets Movie comment created Date
        /// </summary>
        [DataMember]
        public DateTime CreatedDate { get; set; }
        /// <summary>
        /// Gets or Sets comment
        /// </summary>
        [DataMember]
        public string Comment { get; set; }       
    }
}