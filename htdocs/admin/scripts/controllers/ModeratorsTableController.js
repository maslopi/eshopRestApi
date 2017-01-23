app.controller('ModeratorsTableController', ['$scope', 'UsersService',
    function ($scope, UsersService) {
        'use strict';

        $scope.users = [];
        $scope.name = 'Moderatorzy';

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.delete = function (id) {
            var c = confirm("Potwierdź usunięcie");

            if (c == true) {
                UsersService.delete(id).then(function (response) {
                    $scope.retrieveAll();
                }, function (error) {
                    registerError(error, 'deleting user');
                });
            }
        };

        $scope.retrieveAll = function () {
            UsersService.retrieveAll().then(function (response) {
                $scope.users = [];

                // Getting only users with ROLE_MODERATOR (ID: 5)
                angular.forEach(response.data, function (value) {
                    angular.forEach(value.roles, function (role) {
                        if (role.id === 5) {
                            $scope.users.push(value);
                        }
                    });
                });
            }, function (error) {
                registerError(error, 'retrieving users');
            });
        };

        (function () {
            $scope.retrieveAll();
        })();

    }]);