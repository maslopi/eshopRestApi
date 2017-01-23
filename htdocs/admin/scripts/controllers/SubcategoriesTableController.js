app.controller('SubcategoriesTableController', ['$scope', '$routeParams', 'CategoriesService',
    function ($scope, $routeParams, CategoriesService) {
        'use strict';

        $scope.category = [];
        $scope.categories = [];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.childFilter = function (item) {
            if(item.parent !== null){
                return (item.parent.id === $scope.category.id);
            }
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
            CategoriesService.retrieveAll($routeParams.categoryID).then(function (response) {
                $scope.category = response.data;
            }, function (error) {
                registerError(error, 'retrieving products');
            });

            CategoriesService.retrieveAll(id).then(function (response) {
                $scope.categories = response.data;
            }, function (error) {
                registerError(error, 'retrieving categories');
            });
        };

        $scope.create = function () {
            var item = {
                id: null,
                parent: {id: $routeParams.categoryID},
                enabled: true,
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