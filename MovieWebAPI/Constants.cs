using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieWebAPI
{
    /// <summary>
    /// Contains Constants value used all across aplication
    /// Used to avoid writing multiple times same value
    /// In case of any change just here the change should be  made
    /// </summary>
    public static class Constants
    {
        /// <summary>
        /// SQL Server Connection String
        /// </summary>
        public const string sqlConnectionString = "Data Source=AVENGER;Initial Catalog=MovieRecommendation;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
    }
}