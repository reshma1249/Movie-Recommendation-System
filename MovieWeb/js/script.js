var MovieApp = angular.module('MovieApp', ['ngRoute', 'ui.bootstrap', 'ngResource']);
MovieApp.config(function ($routeProvider) {
		$routeProvider
			.when('/home', {
				templateUrl : 'views/home.html',
				controller: 'homeController'
			})
			.when('/addmovie', {
				templateUrl : 'views/addmovie.html',
				controller: 'AddMovieController'
			})
			.when('/movielist', {
			    templateUrl: 'views/movieList.html',
			    controller: 'movieListController'
			})
            .when('/account', {
				templateUrl : 'views/account.html',
				controller: 'AccountController'
            })
            .when('/editmovie', {
                templateUrl: 'views/editmovie.html',
                controller: 'EditMovieController'
            })
            .when('/ratings', {
                templateUrl: 'views/ratings.html',
                controller: 'RateMovieController'
            })
            .when('/collection', {
                templateUrl: 'views/collection.html',
                controller: 'userRatedListController'
            })
            .when('/recommendation', {
                templateUrl: 'views/recommendation.html',
                controller: 'RecommendationController'
            }); 
});

MovieApp.controller('mainController', ['$scope', '$http', '$window', function ($scope, $http, $window) {
    $scope.showInfo = function () {
        if (localStorage.Profile === 'Admin') {
            return true;
        } else {
            return false;
        }
    };
    
    
    var userName = localStorage.UserName;
    if (typeof (userName) === "undefined" || userName === null || userName === "") {
        var landingUrl = $window.location.origin + "/login.html";
        $window.location.href = landingUrl;
    } else {
        $scope.userName = userName;       
    }
    $scope.logout = function () {
        localStorage.clear();
        var landingUrl = $window.location.origin + "/login.html";
        $window.location.href = landingUrl;
    };

    $scope.movieList = function () {
        localStorage.genreSelected = "";
    };
}]);

MovieApp.filter('startFrom', function () {
    return function (input, start) {
        start = +start;
        return input.slice(start);
    }
});

MovieApp.directive('starRating', function () {
    return {
        restrict: 'A',
        template: '<ul class="rating">' +
            '<li ng-repeat="star in stars" ng-class="star" ng-show="starValue($index)" ng-click="toggle($index)">' +
            '\u2605' +
            '</li>' +
            '</ul>',
        scope: {
            ratingValue: '=',
            max: '=',
            onRatingSelected: '&'
        },
        link: function (scope, elem, attrs) {

            var updateStars = function () {
                scope.stars = [];
                for (var i = 0; i < scope.max; i++) {
                    scope.stars.push({
                        filled: i < scope.ratingValue
                    });
                }
            };

            scope.starValue = function (index) {
                if(index === 0) {
                    return false;
                } else {
                    return true;
                }
            };


            scope.toggle = function (index) {
                scope.ratingValue = index + 1;
                scope.onRatingSelected({
                    rating: index + 1
                });
            };

            scope.$watch('ratingValue', function (oldVal, newVal) {
                if (newVal) {
                    updateStars();
                }
            });
        }
    }
});