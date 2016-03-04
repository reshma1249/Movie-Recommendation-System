using MovieWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;

namespace MovieWebAPI.Controllers
{
[EnableCors(origins: "*", headers: "*", methods: "*")]
public class MovieController : ApiController
{
/// <summary>
/// Add New Movies into Database
/// </summary>
/// <param name="movieDetails">Movie Details</param>
/// <returns>Id of the movie inserted</returns>
[Route("api/Movie")]
[HttpPost]
[ResponseType(typeof(int))]
public IHttpActionResult AddMovie(Movie movieDetails)
{
int MovieID = 0;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspAddNewMovie]", connection))
{
//CommandType for Store Procedure 
command.CommandType = CommandType.StoredProcedure;
//Pararmeters pass  with value
command.Parameters.AddWithValue("Name", movieDetails.Name);
command.Parameters.AddWithValue("ReleseDate", movieDetails.ReleaseDate);
command.Parameters.AddWithValue("Genre", movieDetails.Genre);
command.Parameters.AddWithValue("Description", movieDetails.Description);
command.Parameters.AddWithValue("AvgRating", movieDetails.AvgRating);
command.Parameters.AddWithValue("TotalRatings", movieDetails.TotalRatings);
command.Parameters.AddWithValue("Country", movieDetails.Country);
command.Parameters.AddWithValue("Category", movieDetails.Category);
command.Parameters.AddWithValue("Tags", movieDetails.Tags);
connection.Open();
//Executes the query 
using (SqlDataReader reader = command.ExecuteReader())
{
//Checks if there is data available or not
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
MovieID = reader.GetInt32(reader.GetOrdinal("ID"));                                   
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
return Ok(MovieID);
}



/// <summary>
/// Get All Movies List From Database
/// </summary>
/// <returns>All movies related Data</returns>
[Route("api/Movie")]
[HttpGet]
[ResponseType(typeof(List<Movie>))]
public IHttpActionResult GetMovie()
{
List<Movie> movie = new List<Movie>();
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspAGetAllMovies]", connection))
{
command.CommandType = CommandType.StoredProcedure;                       
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
//Checks if there is data available or not
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
Movie movieDetails = new Movie();
movieDetails.ID = reader.GetInt32(reader.GetOrdinal("ID"));
movieDetails.Name = reader.GetString(reader.GetOrdinal("Name"));
movieDetails.ReleaseDate = reader.GetDateTime(reader.GetOrdinal("ReleaseDate"));
movieDetails.Genre = reader.GetString(reader.GetOrdinal("Genre"));
movieDetails.Description = reader.GetString(reader.GetOrdinal("Description"));
movieDetails.AvgRating = reader.GetDecimal(reader.GetOrdinal("AvgRating"));
movieDetails.TotalRatings = reader.GetInt32(reader.GetOrdinal("TotalRatings"));
movieDetails.Country = reader.GetString(reader.GetOrdinal("Country"));
movieDetails.Category = reader.GetString(reader.GetOrdinal("Category"));
movie.Add(movieDetails);
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
return Ok(movie);
}

/// <summary>
/// Update Movie Details
/// </summary>
/// <param name="movieDetails"></param>
/// <returns>Returns Response as True or False</returns>
[Route("api/Movie")]
[HttpPut]
[ResponseType(typeof(bool))]
public IHttpActionResult UpdateMovie(Movie movieDetails)
{
bool isSuccessful = false;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspUpdateMovieDetails]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("ID", movieDetails.ID);
command.Parameters.AddWithValue("Name", movieDetails.Name);
command.Parameters.AddWithValue("ReleseDate", movieDetails.ReleaseDate);
command.Parameters.AddWithValue("Genre", movieDetails.Genre);
command.Parameters.AddWithValue("Description", movieDetails.Description);
command.Parameters.AddWithValue("Country", movieDetails.Country);
connection.Open();
command.ExecuteNonQuery();
}
}
}
catch (SqlException exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
return Ok(isSuccessful);
}

/// <summary>
/// 
/// </summary>
/// <param name="userId"></param>
/// <param name="movieId"></param>
/// <param name="rating"></param>
/// <returns></returns>
[Route("api/Movie/Rate")]
[HttpPost]
[ResponseType(typeof(bool))]
public IHttpActionResult UpdateMovieRating(int userID, int movieID, int rating)
{
bool isSuccessful = false;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspRateMovies]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserID", userID);
command.Parameters.AddWithValue("MovieID", movieID);
command.Parameters.AddWithValue("Rating", rating);                        
connection.Open();
command.ExecuteNonQuery();
}
}
}
catch (SqlException exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
return Ok(isSuccessful);
}

/// <summary>
/// 
/// </summary>
/// <param name="userID"></param>
/// <param name="movieID"></param>
/// <returns></returns>
[Route("api/Movie/Rating")]
[HttpGet]
[ResponseType(typeof(int))]
public IHttpActionResult GetRatedMovies(int userID, int movieID)
{
int rating = 0;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspAGetRatedMovies]", connection))
{
command.CommandType = CommandType.StoredProcedure;        
command.Parameters.AddWithValue("UserID", userID);
command.Parameters.AddWithValue("MovieID", movieID);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
//Checks if there is data available or not
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
rating = reader.GetInt32(reader.GetOrdinal("Rating"));
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
return Ok(rating);
}


/// <summary>
/// Get All Movies List From Database
/// </summary>
/// <returns>All movies related Data</returns>
[Route("api/Movie/UserRated")]
[HttpGet]
[ResponseType(typeof(List<Movie>))]
public IHttpActionResult GetUserRatedMovie(int userID)
{
List<Movie> movie = new List<Movie>();
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspAGetAllRatedMovies]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserID", userID);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
//Checks if there is data available or not
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
Movie movieDetails = new Movie();
movieDetails.ID = reader.GetInt32(reader.GetOrdinal("ID"));
movieDetails.Name = reader.GetString(reader.GetOrdinal("Name"));
movieDetails.ReleaseDate = reader.GetDateTime(reader.GetOrdinal("ReleaseDate"));
movieDetails.Genre = reader.GetString(reader.GetOrdinal("Genre"));
movieDetails.Description = reader.GetString(reader.GetOrdinal("Description"));
movieDetails.AvgRating = reader.GetDecimal(reader.GetOrdinal("AvgRating"));
movieDetails.TotalRatings = reader.GetInt32(reader.GetOrdinal("TotalRatings"));
movieDetails.Country = reader.GetString(reader.GetOrdinal("Country"));
movieDetails.Category = reader.GetString(reader.GetOrdinal("Category"));
movieDetails.Rating = reader.GetInt32(reader.GetOrdinal("Rating"));                                    
movie.Add(movieDetails);
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
return Ok(movie);
}

/// <summary>
/// 
/// </summary>
/// <param name="userID"></param>
/// <param name="movieID"></param>
/// <param name="rating"></param>
/// <returns></returns>
[Route("api/Movie")]
[HttpDelete]
[ResponseType(typeof(bool))]
public IHttpActionResult DeleteMovie(int movieID)
{
bool isSuccessful = false;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspDeleteMovie]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("MovieID", movieID);
connection.Open();
command.ExecuteNonQuery();
}
}
}
catch (SqlException exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
return Ok(isSuccessful);
}

/// <summary>
/// 
/// </summary>
/// <param name="userID"></param>
/// <param name="userName"></param>
/// <param name="movieID"></param>
/// <param name="comment"></param>
/// <returns></returns>
[Route("api/Movie/Comment")]
[HttpPost]
[ResponseType(typeof(bool))]
public IHttpActionResult AddMovieComment(int userID, string userName, int movieID, string comment)
{
bool isSuccessful = false;
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspAddMovieComment]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("UserID", userID);
command.Parameters.AddWithValue("UserName", userName);
command.Parameters.AddWithValue("MovieID", movieID);
command.Parameters.AddWithValue("Comment", comment);
connection.Open();
command.ExecuteNonQuery();
}
}
}
catch (SqlException exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
catch (Exception exception)
{
isSuccessful = false;
return BadRequest(exception.Message);
}
return Ok(isSuccessful);
}

/// <summary>
/// 
/// </summary>
/// <param name="userID"></param>
/// <param name="movieID"></param>
/// <returns></returns>
[Route("api/Movie/Comment")]
[HttpGet]
[ResponseType(typeof(List<MovieComment>))]
public IHttpActionResult GetMovieComment(int movieID)
{
List<MovieComment> comment = new List<MovieComment>();
try
{
//Sql Connection
// Create the connectionString
using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
{
// Create the command
using (SqlCommand command = new SqlCommand("[dbo].[uspGetMovieComment]", connection))
{
command.CommandType = CommandType.StoredProcedure;
command.Parameters.AddWithValue("MovieID", movieID);
connection.Open();
using (SqlDataReader reader = command.ExecuteReader())
{
//Checks if there is data available or not
if (reader.HasRows)
{
// Read advances to the next row.
while (reader.Read())
{
MovieComment movieComment = new MovieComment();
movieComment.UserID = reader.GetInt32(reader.GetOrdinal("UserID"));
movieComment.UserName = reader.GetString(reader.GetOrdinal("UserName"));
movieComment.Comment = reader.GetString(reader.GetOrdinal("Comment"));
movieComment.CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedOn"));
comment.Add(movieComment);
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
return Ok(comment);
}


}
}
