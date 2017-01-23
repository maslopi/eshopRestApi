app.controller('ProductsTableController', ['$scope', 'ProductsService', function ($scope, ProductsService) {
    'use strict';

    $scope.products = [];

    var registerError = function (error, message) {
        $scope.error = {
            code: error.status,
            message: error.statusText,
            when: message
        };
    };

    $scope.delete = function (id) {
        var c = confirm("Potwierdź usunięcie");

        if(c == true){
            ProductsService.delete(id).then(function (response) {
                $scope.retrieveAll();
            }, function (error) {
                registerError(error, 'deleting product');
            });
        }
    };


    $scope.retrieveAll = function (id) {
        ProductsService.retrieveAll(id).then(function (response) {
            $scope.products = response.data;
        }, function (error) {
            registerError(error, 'retrieving products');
        });
    };

    (function () {
        $scope.retrieveAll();
    })();

}]);