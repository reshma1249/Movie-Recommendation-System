var app = angular.module('MovieApp', ['ui.bootstrap', 'ngResource']);

app.controller('HomeController', function ($scope, $modal, $http) {
    $scope.showAdminLoginModal = function () {
        var modalInstance = $modal.open({
            templateUrl: 'adminLogin.html',
            controller: 'AdminLoginController',
            size: 'md',
            resolve: {
                contact: function () {

                }
            }
        });
    };

    $scope.showLoginModal = function () {
        var modalInstance = $modal.open({
            templateUrl: 'login.html',
            controller: 'LoginController',
            size: 'md',
            resolve: {
                items: function () {
                    
                }
            }
        });
    };

    $scope.showRegistrationModal = function () {
        var modalInstance = $modal.open({
            templateUrl: 'registration.html',
            controller: 'RegistrationController',
            size: 'md',
            resolve: {
                contact: function () {

                }
            }
        });
    };
});

app.controller('LoginController', ['$scope', '$modalInstance', '$http', '$window', function ($scope, $modalInstance, $http, $window) {
    $scope.userName = "";
    $scope.password = "";
    $scope.message = "";    
    $scope.cancel = function () {
        $modalInstance.close();
    };
    $scope.validation = function() {
        if($scope.userName !== "" && $scope.password !== "") {
            return true;
        } else {
            return false;
        }
    };
    $scope.signIn = function () {
        if($scope.validation()){
            var queryStringParams ={};
            queryStringParams.userName = $scope.userName;
            queryStringParams.password = $scope.password;
            var methodParams = ["Login"];
            var loginURL = BuildQueryString("User", methodParams, queryStringParams);

            $http.get(loginURL).success(function (response) {
                $scope.userDetails = JSON.stringify(response);
                if (response.ID !== 0) {
                    localStorage.UserName = response.UserName;
                    localStorage.FirstName = response.FirstName;
                    localStorage.LastName = response.LastName;
                    localStorage.Email = response.Email;
                    localStorage.DateOfBirth = response.DateOfBirth;
                    localStorage.Gender = response.Gender;
                    localStorage.Country = response.Country;
                    localStorage.Profile = "User";
                    localStorage.userDetails = JSON.stringify(response);
                    var landingUrl = $window.location.origin + "/#/home";
                    $window.location.href = landingUrl;
                } else {
                    $scope.message = "UserName or Password does not match";
                }           
            }).error(function (response) {
                $scope.message = "UserName or Password does not match";
            });
        }
        
    };
}]);

app.controller('AdminLoginController', ['$scope', '$modalInstance', '$http', '$window', function ($scope, $modalInstance, $http, $window) {
    $scope.userName = "";
    $scope.password = "";
    $scope.secretKey = "";
    $scope.message = "";

    $scope.cancel = function () {
        $modalInstance.close();
    };

    $scope.validation = function () {
        if ($scope.userName !== "" && $scope.password !== "") {
            return true;
        } else {
            return false;
        }
    };

    $scope.signIn = function () {
        if ($scope.validation()) {
            var queryStringParams = {};
            queryStringParams.userName = $scope.userName;
            queryStringParams.password = $scope.password;
            queryStringParams.secretKey = $scope.secretKey;
            var methodParams = ["AdminLogin"];
            var loginURL = BuildQueryString("User", methodParams, queryStringParams);

            $http.get(loginURL).success(function (response) {
                $scope.userDetails = JSON.stringify(response);
                if (response.ID !== 0) {
                    localStorage.UserName = response.UserName;
                    localStorage.FirstName = response.FirstName;
                    localStorage.LastName = response.LastName;
                    localStorage.Email = response.Email;
                    localStorage.DateOfBirth = response.DateOfBirth;
                    localStorage.Gender = response.Gender;
                    localStorage.Country = response.Country;
                    localStorage.Profile = "Admin";
                    localStorage.userDetails = JSON.stringify(response);
                    var landingUrl = $window.location.origin + "/#/home";
                    $window.location.href = landingUrl;
                } else {
                    $scope.message = "Enter Valid Details";
                }
            }).error(function (response) {
                $scope.message = "UserName or Password does not match";
            });
        }

    };
}]);

app.controller('RegistrationController', ['$scope', '$modal', '$modalInstance', '$http', function ($scope, $modal, $modalInstance, $http) {
    $scope.userName = "";
    $scope.password = "";
    $scope.firstName = "";
    $scope.lastName = "";
    $scope.email = "";
    $scope.gender = "Male";
    $scope.country = "India";
    $scope.dob = "";
    $scope.message = "";


    $scope.genders = ['Male', 'Female', 'Others'];
    $scope.genderitemselected = function (item) {
        $scope.gender = item;
    };
    $scope.countries = ['India', 'USA'];
    $scope.dropboxitemselected = function (item) {
        $scope.country = item;
    };

    $scope.cancel = function () {
        $modalInstance.close();
    };

    $scope.validation = function() {
        if($scope.userName !== "" && $scope.password !== "") {            
                return true;
        } else {
            return false;
        }
    };

    $scope.registerNextPage = function () {
            localStorage.FirstName = $scope.firstName;
            localStorage.LastName = $scope.lastName;
            localStorage.Email = $scope.email;
            localStorage.DateOfBirth = $scope.dob;
            localStorage.Gender = $scope.gender;
            localStorage.Country = $scope.country;
            localStorage.Profile = "User";
            $modalInstance.close();
            var modalInstance = $modal.open({
                templateUrl: 'registrationPage.html',
                controller: 'RegistrationPageController',
                size: 'md',
                resolve: {
                    contact: function () {

                    }
                }
            });
    };
}]);

app.controller('RegistrationPageController', ['$scope', '$modalInstance', '$http', '$window', function ($scope, $modalInstance, $http, $window) {
    $scope.userName = "";
    $scope.password = "";
    $scope.confirmPassword = "";
    $scope.firstName = localStorage.FirstName;
    $scope.lastName = localStorage.LastName;
    $scope.email = localStorage.Email;
    $scope.gender = localStorage.Gender;
    $scope.country = localStorage.Country;
    $scope.dob = localStorage.DateOfBirth;
    $scope.message = "";

    $scope.cancel = function () {
        $modalInstance.close();
    };

    $scope.validation = function () {
        if ($scope.userName !== "" && $scope.password !== "" && $scope.password === $scope.confirmPassword) {
            return true;
        } else {
            return false;
        }
    };

    $scope.register = function () {
        if ($scope.validation()) {
            var registerData = {};
            registerData.UserName = $scope.userName;
            registerData.Password = $scope.password;
            registerData.FirstName = $scope.firstName;
            registerData.LastName = $scope.lastName;
            registerData.Email = $scope.email;
            registerData.Profile = "User";
            registerData.DateOfBirth = new Date($scope.dob);
            registerData.Gender = $scope.gender;
            registerData.Country = $scope.country;

            var methodParams = ["Registration"];
            $http.post(BuildQueryString("User", methodParams), registerData)
                   .success(function (response) {
                       localStorage.UserName = $scope.userName;
                       $scope.message = "Registration Successful";
                       var landingUrl = $window.location.origin + "/#/home";
                       $window.location.href = landingUrl;
                   }).error(function (response) {
                       $scope.message = "Error Occured While Saving Data";
                   });
        }
    };
}]);

