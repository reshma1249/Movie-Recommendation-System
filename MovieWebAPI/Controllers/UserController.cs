using MovieWebAPI.Models;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;

namespace MovieWebAPI.Controllers
{
/// <summary>
/// Class implements service methods relating to the user in the database
/// </summary>
[EnableCors(origins: "*", headers: "*", methods: "*")]
public class UserController : ApiController
{
/// <summary>
/// Validates Login Details
/// Returns User Details if User enters valid Data 
/// </summary>
/// <param name="userName">UserName</param>
/// <param name="password">Password</param>
/// <returns>User Details</returns>
[Route("api/User/Login")]
[HttpGet]
[ResponseType(typeof(User))]
public IHttpActionResult Login(string userName, string password)
{
User userDetails = new User();
try
{
//Sql Connection
// Create the connectionString
// Trusted_Connection is used to denote the connection uses Windows Authentication
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{                  
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspGetUserDetails]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserName", userName);
command.Parameters.AddWithValue("Password", password);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
userDetails.ID = reader.GetInt32(reader.GetOrdinal("ID"));
userDetails.UserName = reader.GetString(reader.GetOrdinal("UserName"));
userDetails.FirstName = reader.GetString(reader.GetOrdinal("FirstName"));
userDetails.LastName = reader.GetString(reader.GetOrdinal("LastName"));                                    
userDetails.Country = reader.GetString(reader.GetOrdinal("Country"));
userDetails.Gender = reader.GetString(reader.GetOrdinal("Gender"));
userDetails.DateOfBirth = reader.GetDateTime(reader.GetOrdinal("DateOfBirth"));
userDetails.Email = reader.GetString(reader.GetOrdinal("EMail"));
userDetails.Profile = reader.GetString(reader.GetOrdinal("Profile"));
}
}
}
}
}
}
catch (SqlException exception)
{
return BadRequest(exception.Message);
}
catch (Exception exception)
{
return BadRequest(exception.Message);
}

return Ok(userDetails);
}

/// <summary>
/// 
/// </summary>
/// <param name="userName"></param>
/// <param name="password"></param>
/// <param name="secretKey"></param>
/// <returns></returns>
[Route("api/User/AdminLogin")]
[HttpGet]
[ResponseType(typeof(User))]
public IHttpActionResult AdminLogin(string userName, string password, string secretKey)
{
User userDetails = null;
try
{
//Sql Connection
// Create the connectionString
// Trusted_Connection is used to denote the connection uses Windows Authentication
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspGetUserDetails]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserName", userName);
command.Parameters.AddWithValue("Password", password);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
userDetails = new User();
userDetails.ID = reader.GetInt32(reader.GetOrdinal("ID"));
userDetails.UserName = reader.GetString(reader.GetOrdinal("UserName"));
userDetails.FirstName = reader.GetString(reader.GetOrdinal("FirstName"));
userDetails.LastName = reader.GetString(reader.GetOrdinal("LastName"));
userDetails.Country = reader.GetString(reader.GetOrdinal("Country"));
userDetails.Gender = reader.GetString(reader.GetOrdinal("Gender"));
userDetails.DateOfBirth = reader.GetDateTime(reader.GetOrdinal("DateOfBirth"));
userDetails.Email = reader.GetString(reader.GetOrdinal("EMail"));
userDetails.Profile = reader.GetString(reader.GetOrdinal("Profile"));
}
}
}
}
}

if(!(userDetails.Profile == "Admin" && secretKey == "123456"))
{
userDetails.ID = 0;
}
}
catch (SqlException exception)
{
return BadRequest(exception.Message);
}
catch (Exception exception)
{
return BadRequest(exception.Message);
}

return Ok(userDetails);
}

/// <summary>
/// User Registration is done here
/// </summary>
/// <param name="userDetails"></param>
/// <param name="userType"></param>
/// <returns></returns>
[Route("api/User/Registration")]
[HttpPost]
[ResponseType(typeof(int))]
public IHttpActionResult Registration(User userDetails)
{
int registrationID = 0;
           
try
{
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
using (SqlCommand command = new SqlCommand("[dbo].[uspAddNewUserDetails]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserName", userDetails.UserName);
command.Parameters.AddWithValue("Password", userDetails.Password);
command.Parameters.AddWithValue("FirstName", userDetails.FirstName);
command.Parameters.AddWithValue("LastName", userDetails.LastName);
command.Parameters.AddWithValue("Gender", userDetails.Gender);
command.Parameters.AddWithValue("DateOfBirth", userDetails.DateOfBirth);
command.Parameters.AddWithValue("Email", userDetails.Email);
command.Parameters.AddWithValue("Country", userDetails.Country);
command.Parameters.AddWithValue("Profile", userDetails.Profile);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
registrationID = reader.GetInt32(reader.GetOrdinal("ID"));
}
}
}
}
}
catch (SqlException exception)
{
return BadRequest(exception.Message);
}
catch (Exception exception)
{
return BadRequest(exception.Message);
}

return Ok(registrationID);
}


/// <summary>
/// User Registration is done here
/// </summary>
/// <param name="userDetails"></param>
/// <returns></returns>
[Route("api/User/UpdateDetail")]
[HttpPut]
[ResponseType(typeof(bool))]
public IHttpActionResult UpdateUser(User userDetails)
{
bool isRegistrationSuccessful = false;
try
{
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
using (SqlCommand command = new SqlCommand("[dbo].[uspUpdateUserDetails]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("ID", userDetails.ID);
command.Parameters.AddWithValue("UserName", userDetails.UserName);
command.Parameters.AddWithValue("FirstName", userDetails.FirstName);
command.Parameters.AddWithValue("LastName", userDetails.LastName);
command.Parameters.AddWithValue("Gender", userDetails.Gender);
command.Parameters.AddWithValue("DateOfBirth", userDetails.DateOfBirth);
command.Parameters.AddWithValue("Email", userDetails.Email);
command.Parameters.AddWithValue("Country", userDetails.Country);
connection.Open();
command.ExecuteNonQuery();
isRegistrationSuccessful = true;
}
}
catch (SqlException exception)
{
isRegistrationSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isRegistrationSuccessful = false;
return BadRequest(exception.Message);
}

return Ok(isRegistrationSuccessful);
}

/// <summary>
/// Update User Password
/// </summary>
/// <param name="ID"></param>
/// <param name="password"></param>
/// <returns></returns>
[Route("api/User/PasswordChange")]
[HttpPut]
[ResponseType(typeof(bool))]
public IHttpActionResult UserPassword(int ID, string password)
{
bool isRegistrationSuccessful = false;
try
{
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
using (SqlCommand command = new SqlCommand("[dbo].[uspUpdateUserPassword]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("ID", ID);
command.Parameters.AddWithValue("Password", password);
connection.Open();
command.ExecuteNonQuery();
isRegistrationSuccessful = true;
}
}
catch (SqlException exception)
{
isRegistrationSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isRegistrationSuccessful = false;
return BadRequest(exception.Message);
}

return Ok(isRegistrationSuccessful);
}
}
}
