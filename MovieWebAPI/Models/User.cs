using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace MovieWebAPI.Models
{
    /// <summary>
    /// Class implements the properties related to User Details
    /// </summary>
     [DataContract]
    public class User
    {

        /// <summary>
        /// Gets or Sets User ID
        /// </summary>
         [DataMember]
         public int ID { get; set; }
        /// <summary>
        /// Gets or Sets User Name
        /// </summary>
         [DataMember]
         public string UserName { get; set; }
        /// <summary>
        /// Gets or Sets Password
        /// </summary>
         [DataMember]
         public string Password { get; set; }
        /// <summary>
        /// Gets or Sets User First Name
        /// </summary>
         [DataMember]
         public string FirstName { get; set; }
        /// <summary>
        /// Gets or Sets User Last Name
        /// </summary>
         [DataMember]
         public string LastName { get; set; }
        /// <summary>
        /// Gets or Sets User Email Address
        /// </summary>
         [DataMember]
         public string Email { get; set; }
        /// <summary>
        /// Gets or Sets User Profile
        /// </summary>
         [DataMember]
         public string Profile { get; set; }
        /// <summary>
        /// Gets or Sets User Date of Birth
        /// </summary>
         [DataMember]
         public DateTime DateOfBirth { get; set; }
        /// <summary>
        /// Gets or Sets User Gender
        /// </summary>
         [DataMember]
         public string Gender { get; set; }
        /// <summary>
        /// Gets or Sets User Country
        /// </summary>
         [DataMember]
         public string Country { get; set; }
    }
}