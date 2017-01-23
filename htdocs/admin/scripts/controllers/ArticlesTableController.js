app.controller('ArticlesTableController', ['$scope', 'ArticlesService', function ($scope, ArticlesService) {
    'use strict';

    $scope.articles = [];

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
            ArticlesService.delete(id).then(function (response) {
                $scope.retrieveAll();
            }, function (error) {
                registerError(error, 'deleting article');
            });
        }
    };

    $scope.retrieveAll = function (id) {
        ArticlesService.retrieveAll(id).then(function (response) {
            $scope.articles = response.data;
        }, function (error) {
            registerError(error, 'retrieving articles');
        });
    };

    (function () {
        $scope.retrieveAll();
    })();

}]);