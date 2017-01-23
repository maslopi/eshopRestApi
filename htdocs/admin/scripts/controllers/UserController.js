app.controller('UserController', ['$scope', '$routeParams', '$location', 'UsersService',
    function ($scope, $routeParams, $location, UsersService) {
        'use strict';

        $scope.user = [];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (user) {
            UsersService.update(user).then(function (response) {
                $location.path("/customers");
            }, function (error) {
                registerError(error, 'updating user');
            });
        };

        $scope.edit = function (user) {
            var rolesArr = [{id: 7}];

            if (user.ROLE_USER == true) {
                rolesArr.push({id: 1});
            }

            if (user.ROLE_ADMINISTRATOR == true) {
                rolesArr.push({id: 2});
            }

            if (user.ROLE_MODERATOR == true) {
                rolesArr.push({id: 5});
            }

            if (user.ROLE_SALESMAN == true) {
                rolesArr.push({id: 6});
            }

            $scope.update({
                id: user.id,
                firstName: user.firstName,
                lastName: user.lastName,
                email: user.email,
                password: user.password,
                enabled: user.enabled,
                roles: rolesArr
            });
        };

        $scope.create = function (user) {
            var rolesArr = [{id: 7}];

            if (user.ROLE_USER == true) {
                rolesArr.push({id: 1});
            }

            if (user.ROLE_ADMINISTRATOR == true) {
                rolesArr.push({id: 2});
            }

            if (user.ROLE_MODERATOR == true) {
                rolesArr.push({id: 5});
            }

            if (user.ROLE_SALESMAN == true) {
                rolesArr.push({id: 6});
            }

            var item = {
                firstName: user.firstName,
                lastName: user.lastName,
                email: user.email,
                password: user.password,
                enabled: user.enabled,
                roles: rolesArr
            };

            UsersService.create(item).then(function (response) {
                $location.path("/customers");
            }, function (error) {
                registerError(error, 'creating user');
            });
        };

        $scope.retrieve = function () {
            UsersService.retrieveAll($routeParams.userID).then(function (response) {
                $scope.user = response.data;

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

            }, function (error) {
                registerError(error, 'retrieving user');
            });
        };

    }]);