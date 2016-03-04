using MovieWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;

namespace MovieWebAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class RecommendationController : ApiController
    {


        /// <summary>
        /// Get All Movies List From Database
        /// </summary>
        /// <returns>All movies related Data</returns>
        [Route("api/Recommendation")]
        [HttpGet]
        [ResponseType(typeof(List<Movie>))]
        public IHttpActionResult GetUserRatedMovie(int userID)
        {
            List<Movie> movie = new List<Movie>();
            int i, j, k, total, n;
            double value, sum;
            int moviesCount = GetMoviesCount();
            int usersCount = GetUsersCount();
            int[,] ratingsMatrix = new int[usersCount, moviesCount];
            double[,] ratingsSimilarity = new double[usersCount, moviesCount];
            int[,] watchedMatrix = new int[usersCount, moviesCount];
            int[,] watchedMatrix2 = new int[moviesCount, usersCount];
            int[,] watchedMatrix3 = new int[usersCount, usersCount];
            double[,,] similarityMatrix = new double[moviesCount, usersCount, usersCount];
            double[,] userSimilarityMatrix = new double[usersCount, usersCount];
            double[,] userWatchedMatrix = new double[usersCount, usersCount];
            List<Ratings> rating = new List<Ratings>();
            rating = GetRatings();
            for (i = 0; i < usersCount; i++)
            {
                for (j = 0; j < moviesCount; j++)
                {
                    ratingsMatrix[i, j] = 0;
                    watchedMatrix[i, j] = 0;
                    watchedMatrix2[j, i] = 0;
                }
            }

            foreach (Ratings rate in rating)
            {
                ratingsMatrix[rate.UserID-1, rate.MovieID-1] = rate.Rating;
                watchedMatrix[rate.UserID-1, rate.MovieID-1] = 1;
                watchedMatrix2[rate.MovieID-1, rate.UserID-1] = 1;
            }

            for (k = 0; k < moviesCount; k++)
            {

                for (i = 0; i < usersCount; i++)
                {
                    for (j = 0; j < usersCount; j++)
                    {
                        similarityMatrix[k, i, j] = (10 - Math.Abs(ratingsMatrix[i, k] - ratingsMatrix[j, k])) / 10;

                    }
                }
            }




            for (i = 0; i < usersCount; i++)
            {
                for (j = 0; j < usersCount; j++)
                {
                    if (i != j)
                    {
                        value = 0;
                        for (k = 0; k < moviesCount; k++)
                        {
                            value += similarityMatrix[k, i, j];
                        }
                        userSimilarityMatrix[i, j] = value / (double)moviesCount;

                    }
                    else
                    {
                        userSimilarityMatrix[i, j] = 1;
                    }
                }
            }


            for (i = 0; i < usersCount; i++)
            {
                for (j = 0; j < usersCount; j++)
                {
                    total = 0;
                    for (k = 0; k < moviesCount; k++)
                    {
                        total += watchedMatrix[i, k] * watchedMatrix2[k, j];
                    }
                    watchedMatrix3[i, j] = total;
                }
            }

            for (i = 0; i < usersCount; i++)
            {
                for (j = 0; j < usersCount; j++)
                {
                    sum = 0;
                    for (k = 0; k < usersCount; k++)
                    {
                        sum += (double)watchedMatrix3[i, k] * userSimilarityMatrix[k, j];
                    }
                    userWatchedMatrix[i, j] = sum;
                }
            }

            for (n = 0; n < 1; n++)
            {
                for (i = 0; i < usersCount; i++)
                {
                    for (j = 0; j < moviesCount; j++)
                    {
                        sum = 0;
                        for (k = 0; k < usersCount; k++)
                        {
                            sum += userWatchedMatrix[i, k] * ratingsMatrix[k, j];
                        }
                        ratingsSimilarity[i, j] = sum;
                    }
                }
            }
            List<Double> moviesList = new List<Double>();
            i = userID;
            for (j = 0; j < moviesCount; j++)
            {
                    moviesList.Add(ratingsSimilarity[i-1, j]);               
            }

            var sorted = moviesList
                .Select((x, y) => new KeyValuePair<double, double>(x, y))
                .OrderBy(x => x.Key)
                .ToList();

            List<double> indexes = sorted.Select(x => x.Key).ToList();
            List<double> idx = sorted.Select(x => x.Value).ToList();

            StringBuilder builder = new StringBuilder();
            int count = 0;
            idx.Reverse();
            List<int> ids = new List<int>();
            foreach (int id in idx)
            {
                if(watchedMatrix[userID-1, id] == 0)
                {
                    ids.Add(id);
                    count++;
                }
                if(count==10)
                {
                    break;
                }
            }
            foreach (int index in ids)
            {
                try
                {
                    //Sql Connection
                    // Create the connectionString
                    using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
                    {
                        // Create the command
                        using (SqlCommand command = new SqlCommand("[dbo].[uspGetAllRecommendedMovies]", connection))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("MovieID", index+1);
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
            }
            return Ok(movie);
        }

        /// <summary>
        /// Get Movies Count
        /// </summary>
        /// <returns></returns>
        private int GetMoviesCount()
        {
            int moviesCount = 0;
            try
            {
                using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("[dbo].[uspAGetMoviesCount]", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    moviesCount = reader.GetInt32(reader.GetOrdinal("Count"));
                                }
                            }
                        }
                    }
                }
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            return moviesCount;

        }

        /// <summary>
        /// Get Users Count
        /// </summary>
        /// <returns></returns>
        private int GetUsersCount()
        {
            int usersCount = 0;
            try
            {
                using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("[dbo].[uspGetUsersCount]", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    usersCount = reader.GetInt32(reader.GetOrdinal("Count"));
                                }
                            }
                        }
                    }
                }
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            return usersCount;
        }

        /// <summary>
        /// Get Ratings List
        /// </summary>
        /// <returns></returns>
        private List<Ratings> GetRatings()
        {
            List<Ratings> ratings = new List<Ratings>();
            try
            {
                using (SqlConnection connection = new SqlConnection(Constants.sqlConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("[dbo].[uspAGetRatedMoviesList]", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    Ratings rate = new Ratings();
                                    rate.Rating = reader.GetInt32(reader.GetOrdinal("Rating"));
                                    rate.MovieID = reader.GetInt32(reader.GetOrdinal("MovieID"));
                                    rate.UserID = reader.GetInt32(reader.GetOrdinal("UserID"));
                                    ratings.Add(rate);
                                }
                            }
                        }
                    }
                }
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            return ratings;
        }

    }
}
