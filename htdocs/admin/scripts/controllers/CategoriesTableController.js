app.controller('CategoriesTableController', ['$scope', 'CategoriesService', function ($scope, CategoriesService) {
    'use strict';

    $scope.categories = [];

    var registerError = function (error, message) {
        $scope.error = {
            code: error.status,
            message: error.statusText,
            when: message
        };
    };

    $scope.notNullFilter = function (item) {
        return (item.parent === null);
    };

    $scope.delete = function (id) {
        var c = confirm("Potwierdź usunięcie");

        if (c == true) {
            CategoriesService.delete(id).then(function (response) {
                $scope.retrieveAll();
            }, function (error) {
                registerError(error, 'deleting category');
            });
        }
    };


    $scope.retrieveAll = function (id) {
        CategoriesService.retrieveAll(id).then(function (response) {
            $scope.categories = response.data;
        }, function (error) {
            registerError(error, 'retrieving categories');
        });
    };

    $scope.create = function () {
        var item = {
            enabled:true,
            name: $scope.newCategoryName,
            description: $scope.newCategoryDescription
        };

        CategoriesService.create(item).then(function (response) {
            $scope.retrieveAll();
        }, function (error) {
            registerError(error, 'creating product');
        });
    };

    (function () {
        $scope.retrieveAll();
    })();

}]);