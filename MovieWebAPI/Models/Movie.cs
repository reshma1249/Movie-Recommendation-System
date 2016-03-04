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
    public class Movie
    {
        /// <summary>
        /// Gets or Sets Movie ID
        /// </summary>
        [DataMember]
        public int ID { get; set; }
        /// <summary>
        /// Gets or Sets Movie Name
        /// </summary>
        [DataMember]
        public string Name { get; set; }
        /// <summary>
        /// Gets or Sets Movie Release Date
        /// </summary>
        [DataMember]
        public DateTime ReleaseDate { get; set; }
        /// <summary>
        /// Gets or Sets Movie Genre
        /// </summary>
        [DataMember]
        public string Genre { get; set; }
        /// <summary>
        /// Gets or Sets Movie Description
        /// </summary>
        [DataMember]
        public string Description { get; set; }
        /// <summary>
        /// Gets or Sets Movie Average Ratings
        /// </summary>
        [DataMember]
        public int Rating { get; set; }
        /// <summary>
        /// Gets or Sets Movie Average Ratings
        /// </summary>
        [DataMember]
        public Decimal AvgRating { get; set; }
        /// <summary>
        /// Gets or Sets Movie Total Ratings
        /// </summary>
        [DataMember]
        public int TotalRatings { get; set; }
        /// <summary>
        /// Gets or Sets Movie Category
        /// </summary>
        [DataMember]
        public string Category { get; set; }
        /// <summary>
        /// Gets or Sets Movie Country
        /// </summary>
        [DataMember]
        public string Country { get; set; }
        /// <summary>
        /// Gets or Sets Movie Tags
        /// </summary>
        [DataMember]
        public string Tags { get; set; }
    }
}