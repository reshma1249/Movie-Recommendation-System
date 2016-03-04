MovieApp.controller('homeController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.subCategory = function (category) {
        localStorage.genreSelected = category;
        var landingUrl = $window.location.origin + "/#/movielist";
        $window.location.href = landingUrl;
       
    };
}]);


MovieApp.controller('AddMovieController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.name = "";
    $scope.releaseDate = "";
    $scope.description = "";
    $scope.countries = ['India', 'USA'];
    $scope.selectedItem = 'India';
    $scope.dropboxitemselected = function (item) {
        $scope.selectedItem = item;
    };
    $scope.genres = [{ name: 'Comedy'},
							{ name: 'Thriller'},
							{ name: 'Action'},
							{ name: 'Animation'},
							{ name: 'Horror'},
							{ name: 'Family'},
							{ name: 'Drama'},
							{ name: 'Adventure'},
							{ name: 'Fantasy'},
							{ name: 'Sport'}];
    $scope.selection = [];
    $scope.toggleSelection = function toggleSelection(genre) {
        var idx = $scope.selection.indexOf(genre);
        if (idx > -1) {
            $scope.selection.splice(idx, 1);
        } else {
            $scope.selection.push(genre);
        }
    };
    $scope.tags = "";
    $scope.image = "";

    $scope.addMovie = function () {
        var movieData = {};
        movieData.Name = $scope.name;
        movieData.ReleaseDate = $scope.releaseDate;
        movieData.Genre = $scope.selection.join(", ");
        movieData.Description = $scope.description;
        movieData.Category = "Movie";
        movieData.Country = $scope.selectedItem;
        movieData.Tags = $scope.tags;
        var methodParams = ["Movie"];
        $http.post(BuildQueryString("Movie", [""]), movieData)
               .success(function (response) {
                   $scope.message = "Movie Successfully added";
               }).error(function (response) {
                   $scope.message = "Error Occured While Saving Data";
               });
    };

}]);

MovieApp.controller('movieListController', ['$scope','$modal', '$http', '$window', function ($scope,$modal, $http, $window) {
    $scope.showInfo = function () {
        if (localStorage.Profile === 'Admin') {
            return true;
        } else {
            return false;
        }
    };
    $scope.movies = [];
    $scope.getMoviesList = function () {
        var methodParams = [""];
        var getMoviesURL = BuildQueryString("Movie", methodParams);

        $http.get(getMoviesURL).success(function (response) {
            $scope.movies = response;
            localStorage.movieDetails = JSON.stringify(response);
            $scope.movies = JSON.parse(localStorage.movieDetails);
        }).error(function (response) {
            $scope.message = "Error Occurred  While Retrieving Data";
        });
    };

    $scope.getMoviesList();

    $scope.search = {};
    $scope.search.Genre = localStorage.genreSelected;
   
    $scope.currentPage = 0;
    $scope.itemsPerPage = 10;
    
    $scope.firstPage = function () {
        return $scope.currentPage == 0;
    };

    $scope.gotoPage = function () {
        $scope.currentPage = 0;
    };

    $scope.lastPage = function () {
        var lastPageNum = Math.ceil($scope.movies.length / $scope.itemsPerPage - 1);
        return $scope.currentPage == lastPageNum;
    };
    $scope.numberOfPages = function () {
        return Math.ceil($scope.movies.length / $scope.itemsPerPage);
    };
    $scope.startingItem = function () {
        return $scope.currentPage * $scope.itemsPerPage;
    };
    $scope.pageBack = function () {
        $scope.currentPage = $scope.currentPage - 1;
    };
    $scope.pageForward = function () {
        $scope.currentPage = $scope.currentPage + 1;
    };
    $scope.editMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };
    $scope.deleteMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
        var modalInstance = $modal.open({
            templateUrl: 'deleteMovie.html',
            controller: 'DeleteMovieController',
            size: 'md',
            resolve: {
                contact: function () {

                }
            }
        });
    };
    $scope.rateMovies = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };
   
}]);


MovieApp.controller('DeleteMovieController', ['$scope','$route', '$modalInstance', '$http', '$window', function ($scope, $route,  $modalInstance, $http, $window) {
    $scope.movie = JSON.parse(localStorage.selectedMovie);
    $scope.ID = $scope.movie.ID;
    $scope.message = "";
    $scope.cancel = function () {
        $modalInstance.close();
    };

    $scope.deletemovie = function () {
        var queryStringParams = {};
        queryStringParams.movieID = $scope.ID;
        var methodParams = [""];
        var url = BuildQueryString("Movie", methodParams, queryStringParams);

        $http.delete(url).success(function (response) {
            $scope.message = "Movie Deleted Successfully";
            $route.reload();
        }).error(function (response) {
            $scope.message = "Error Occurred";
        });
        
    };
}]);

MovieApp.controller('EditMovieController', ['$scope', '$http', function ($scope, $http) {
   

    $scope.movie = JSON.parse(localStorage.selectedMovie);
    $scope.name = $scope.movie.Name;
    $scope.releaseDate = new Date($scope.movie.ReleaseDate);
    $scope.description = $scope.movie.Description;
    $scope.countries = ['India', 'USA'];
    $scope.selectedItem = $scope.movie.Country;
    $scope.dropboxitemselected = function (item) {
        $scope.selectedItem = item;
    }
    $scope.genres = [{ name: 'Comedy' }, 
							{ name: 'Thriller' },
							{ name: 'Action' },
							{ name: 'Animation' },
							{ name: 'Horror' },
							{ name: 'Family' },
							{ name: 'Drama' },
							{ name: 'Adventure' },
							{ name: 'Fantasy' },
							{ name: 'Sport' }];
    $scope.selection = $scope.movie.Genre.split(", ");
    $scope.toggleSelection = function toggleSelection(genre) {
        var idx = $scope.selection.indexOf(genre);
        if (idx > -1) {
            $scope.selection.splice(idx, 1);
        } else {
            $scope.selection.push(genre);
        }
    };
    $scope.tags = $scope.movie.Tags;

    $scope.editMovie = function () {
        var movieData = {};
        movieData.ID = $scope.movie.ID;
        movieData.Name = $scope.name;
        movieData.ReleaseDate = $scope.releaseDate;
        movieData.Genre = $scope.selection.join(", ");
        movieData.Description = $scope.description;
        movieData.Category = "Movie";
        movieData.Country = $scope.selectedItem;
        movieData.Tags = $scope.tags;
        var methodParams = ["Movie"];
        $http.put(BuildQueryString("Movie", [""]), movieData)
               .success(function (response) {
                   $scope.message = "Movie Successfully added";
               }).error(function (response) {
                   $scope.message = "Error Occured While Saving Data";
               });
    };
}]);

MovieApp.controller('RateMovieController', ['$scope', '$http', function ($scope, $http) {
    $scope.rating = 0;
    $scope.movie = JSON.parse(localStorage.selectedMovie);
    $scope.user = JSON.parse(localStorage.userDetails);
    $scope.ID = $scope.movie.ID;
    $scope.name = $scope.movie.Name;
    $scope.genre = $scope.movie.Genre;
    $scope.releaseDate = new Date($scope.movie.ReleaseDate);
    $scope.description = $scope.movie.Description;
    $scope.tags = $scope.movie.Tags;
    $scope.movieRating = 0;
    $scope.message = "";
    $scope.comment = "";
    $scope.getMovieComment = function () {
        var queryStringParams = {};
        queryStringParams.movieID = $scope.movie.ID;
        var methodParams = ["Comment"];
        var getMovieCommentURL = BuildQueryString("Movie", methodParams, queryStringParams);

        $http.get(getMovieCommentURL).success(function (response) {
            $scope.movieComment = response;
        }).error(function (response) {
            $scope.getCommentMessage = "Error Occurred  While Retrieving Data";
        });
    };

    $scope.getMovieComment();

    $scope.saveComment = function () {
        var queryStringParams = {};
        queryStringParams.userID = $scope.user.ID;
        queryStringParams.userName = $scope.user.UserName;
        queryStringParams.movieID = $scope.movie.ID;
        queryStringParams.comment = $scope.comment;
        var methodParams = ["Comment"];
        var url = BuildQueryString("Movie", methodParams, queryStringParams);

        $http.post(url).success(function (response) {
            $scope.getMovieComment();
            $scope.commentMessage = "Your comment has been successfully added";
        }).error(function (response) {
            $scope.commentMessage = "Error Occured While Saving Data";
        });
    };


    $scope.getRatings = function () {   
        var queryStringParams = {};
        queryStringParams.userID = $scope.user.ID;
        queryStringParams.movieID = $scope.movie.ID;
        var methodParams = ["Rating"];
        var url = BuildQueryString("Movie", methodParams, queryStringParams);
        
        $http.get(url).success(function (response) {
            $scope.movieRating = response;
            $scope.ratings = [{
                current: $scope.movieRating+1,
                max: 11
            }];

        });
    };

    $scope.getRatings();

    $scope.rating = 0;
    
    $scope.sendRate = function () {
        var queryStringParams = {};
        queryStringParams.userID = $scope.user.ID;
        queryStringParams.movieID = $scope.movie.ID;
        queryStringParams.rating = $scope.ratings[0].current -1;
        var methodParams = ["Rate"];
        var url = BuildQueryString("Movie", methodParams, queryStringParams);

        $http.post(url).success(function (response) {
            $scope.movieRating = response;
            $scope.message = "Your Rating has been successfully updated";
        }).error(function (response) {
            $scope.message = "Error Occured While Saving Data";
        });      
    };
   
}]);




MovieApp.controller('AccountController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.user = JSON.parse(localStorage.userDetails);
    $scope.userName = localStorage.UserName;
    $scope.password = "";
    $scope.confirmPassword = "";    
    $scope.firstName = localStorage.FirstName;
    $scope.lastName = localStorage.LastName;
    $scope.email = localStorage.Email;
    $scope.gender = localStorage.Gender;
    $scope.genders = ['Male', 'Female', 'Others'];
    $scope.genderitemselected = function (item) {
        $scope.gender = item;
    };
    $scope.countries = ['India', 'USA'];
    $scope.country = localStorage.Country;
    $scope.dropboxitemselected = function (item) {
        $scope.country = item;
    };
    
    $scope.dob = new Date(localStorage.DateOfBirth);
    $scope.message = "";
    $scope.passwordMessage = "";
      

    $scope.validation = function () {
        if ($scope.password !== "" && $scope.confirmPassword !== "" && $scope.password === $scope.confirmPassword) {            
            return true;
        } else {
            $scope.passwordMessage == "Password cant be empty or did not Match";
            return false;
        }
    };

    $scope.editUserDetails = function () {
        var userData = {};
        userData.ID = $scope.user.ID;
        userData.UserName = $scope.user.UserName;
            userData.FirstName = $scope.firstName;
            userData.LastName = $scope.lastName;
            userData.Email = $scope.email;
            userData.DateOfBirth = $scope.dob;
            userData.Gender = $scope.gender;
            userData.Country = $scope.country;

            var methodParams = ["UpdateDetail"];
        $http.put(BuildQueryString("User", methodParams), userData)
                   .success(function (response) {
                       localStorage.FirstName = $scope.firstName;
                       localStorage.LastName = $scope.lastName;
                       localStorage.Email = $scope.email;
                       localStorage.DateOfBirth = $scope.dob;
                       localStorage.Gender = $scope.gender;
                       localStorage.Country = $scope.country;
                       $scope.message = "Update of user Details Successful";
                   }).error(function (response) {
                       $scope.message = "Error Occured While Saving Data";
                   });
    };
    $scope.editPassword = function () {
        if ($scope.validation()) {
            var queryStringParams = {};
            queryStringParams.ID = $scope.user.ID;
            queryStringParams.password = $scope.password;
            var methodParams = ["PasswordChange"];
            var url = BuildQueryString("User", methodParams, queryStringParams);

            $http.put(url).success(function (response) {
                $scope.passwordMessage = "Password change successful";
            }).error(function (response) {
                $scope.passwordMessage = "Error occurred while saving data";
            });
        }
    };
}]);



MovieApp.controller('userRatedListController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.showInfo = function () {
        if (localStorage.Profile === 'Admin') {
            return true;
        } else {
            return false;
        }
    };
    $scope.movies = [];
    $scope.getMoviesList = function () {
        $scope.user = JSON.parse(localStorage.userDetails);
        var queryStringParams = {};
        queryStringParams.userID = $scope.user.ID;
        var methodParams = ["UserRated"];
        var getMoviesURL = BuildQueryString("Movie", methodParams, queryStringParams);

        $http.get(getMoviesURL).success(function (response) {
            $scope.movies = response;
            localStorage.userRatedDetails = JSON.stringify(response);
            $scope.movies = JSON.parse(localStorage.userRatedDetails);
        }).error(function (response) {
            $scope.message = "Error Occurred  While Retrieving Data";
        });
    };

    $scope.getMoviesList();

    $scope.search = {};

    $scope.currentPage = 0;
    $scope.itemsPerPage = 10;

    $scope.firstPage = function () {
        return $scope.currentPage == 0;
    };

    $scope.gotoPage = function () {
        $scope.currentPage = 0;
    };

    $scope.lastPage = function () {
        var lastPageNum = Math.ceil($scope.movies.length / $scope.itemsPerPage - 1);
        return $scope.currentPage == lastPageNum;
    };
    $scope.numberOfPages = function () {
        return Math.ceil($scope.movies.length / $scope.itemsPerPage);
    };
    $scope.startingItem = function () {
        return $scope.currentPage * $scope.itemsPerPage;
    };
    $scope.pageBack = function () {
        $scope.currentPage = $scope.currentPage - 1;
    };
    $scope.pageForward = function () {
        $scope.currentPage = $scope.currentPage + 1;
    };
    $scope.editMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };

    $scope.rateMovies = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };

    $scope.deleteMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
        var modalInstance = $modal.open({
            templateUrl: 'deleteMovie.html',
            controller: 'DeleteMovieController',
            size: 'md',
            resolve: {
                contact: function () {

                }
            }
        });
    };
}]);

MovieApp.controller('RecommendationController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.showInfo = function () {
        if (localStorage.Profile === 'Admin') {
            return true;
        } else {
            return false;
        }
    };
    $scope.movies = [];
    $scope.getMoviesList = function () {
        $scope.user = JSON.parse(localStorage.userDetails);
        var queryStringParams = {};
        queryStringParams.userID = $scope.user.ID;
        var methodParams = [""];
        var getMoviesURL = BuildQueryString("Recommendation", methodParams, queryStringParams);

        $http.get(getMoviesURL).success(function (response) {
            $scope.movies = response;
            localStorage.recommendedMovies = JSON.stringify(response);
            $scope.movies = JSON.parse(localStorage.recommendedMovies);
        }).error(function (response) {
            $scope.message = "Error Occurred  While Retrieving Data";
        });
    };

    $scope.getMoviesList();

    $scope.search = {};

   
    $scope.editMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };

    $scope.rateMovies = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
    };

    $scope.deleteMovie = function (movie) {
        localStorage.selectedMovie = JSON.stringify(movie);
        var modalInstance = $modal.open({
            templateUrl: 'deleteMovie.html',
            controller: 'DeleteMovieController',
            size: 'md',
            resolve: {
                contact: function () {

                }
            }
        });
    };

}]);