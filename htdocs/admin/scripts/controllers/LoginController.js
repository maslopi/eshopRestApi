app.controller("LoginController", ['$scope','$rootScope', 'UsersService', '$cookieStore', '$window', function($scope, $rootScope, UsersService, $cookieStore, $window) {

    $scope.logger = {};

    $scope.login = function(email, password) {

        UsersService.find(email, password).then(function (response) {
            $scope.user = response.data;
            if($scope.user.email != email){
                $scope.text = "Zly login lub haslo.";
                $scope.wrongLogin = true;
            }
            else if($scope.user.roles.length<3){
                $scope.text = "Nie masz wystarczających uprawnień.";
                $scope.wrongLogin = true;
            }
            else {
                $scope.wrongLogin = false;
                $window.location.href = Shop.client;

                angular.forEach($scope.user.roles, function (role) {
                    if (role.id === 1) {
                        $scope.user.ROLE_USER = true;
                    }
                });

                angular.forEach($scope.user.roles, function (role) {
                    if (role.id === 2) {
                        $scope.user.ROLE_ADMINISTRATOR = true;
                    }
                });

                angular.forEach($scope.user.roles, function (role) {
                    if (role.id === 5) {
                        $scope.user.ROLE_MODERATOR = true;
                    }
                });

                angular.forEach($scope.user.roles, function (role) {
                    if (role.id === 6) {
                        $scope.user.ROLE_SALESMAN = true;
                    }
                });

                $cookieStore.put('userId', $scope.user.id);
                $cookieStore.put('userName', $scope.user.email);
                $cookieStore.put('ROLE_USER', $scope.user.ROLE_USER);
                $cookieStore.put('ROLE_ADMINISTRATOR', $scope.user.ROLE_ADMINISTRATOR);
                $cookieStore.put('ROLE_MODERATOR', $scope.user.ROLE_MODERATOR);
                $cookieStore.put('ROLE_SALESMAN', $scope.user.ROLE_SALESMAN);
                $cookieStore.put('isLoggedIn', true);
            }
        })
    }

    $scope.logout = function() {
        $cookieStore.remove('userName');
        $cookieStore.remove('userId');
        $cookieStore.put('isLoggedIn', false);
        $cookieStore.put('ROLE_USER', false);
        $cookieStore.put('ROLE_ADMINISTRATOR', false);
        $cookieStore.put('ROLE_MODERATOR', false);
        $cookieStore.put('ROLE_SALESMAN', false);
        $window.location.href = Shop.client;
    };

    $scope.getLoggedUser = function() {
        return $cookieStore.get('userName');
    };

    $scope.isLogged = function() {
        return $cookieStore.get('isLoggedIn');
    };

    $scope.isAdministrator = function() {
        return $cookieStore.get('ROLE_ADMINISTRATOR');
    };

    $scope.isModerator = function() {
        return $cookieStore.get('ROLE_MODERATOR');
    };

    $scope.isSalesman = function() {
        return $cookieStore.get('ROLE_SALESMAN');
    };


}]);
