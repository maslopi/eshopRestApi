app.controller('UsersTableController', ['$scope', 'UsersService', function ($scope, UsersService) {
    'use strict';

    $scope.users = [];
    $scope.name = 'Klienci';

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
            $scope.users = response.data;
        }, function (error) {
            registerError(error, 'retrieving users');
        });
    };

    (function () {
        $scope.retrieveAll();
    })();

}]);