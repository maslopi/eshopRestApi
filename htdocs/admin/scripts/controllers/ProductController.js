app.controller('ProductController', ['$scope', '$routeParams', '$location', 'ProductsService', 'CategoriesService', 'AttachmentsService',
    function ($scope, $routeParams, $location, ProductsService, CategoriesService, AttachmentsService) {
        'use strict';

        $scope.product = [];
        $scope.categories = [];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.notNullFilter = function (item) {
            return (item.parent !== null);
        };

        $scope.update = function (product) {
            ProductsService.update(product).then(function (response) {
                $location.path("/products");
            }, function (error) {
                registerError(error, 'updating product');
            });
        };

        $scope.deleteAttachment = function (id) {
            var c = confirm("Potwierdź usunięcie");

            if (c == true) {
                AttachmentsService.delete(id).then(function (response) {
                    $scope.retrieve();
                }, function (error) {
                    registerError(error, 'deleting product');
                });
            }
        };

        $scope.edit = function (product) {
            $scope.update({
                id: product.id,
                name: product.name,
                description: product.description,
                enabled: product.enabled,
                price: product.price,
                categoryID: product.category.id
            });
        };

        $scope.create = function (product) {
            var item = {
                name: product.name,
                description: product.description,
                enabled: product.enabled,
                price: product.price,
                categoryID: product.category.id
            };

            ProductsService.create(item).then(function (response) {
                $location.path("/products");
            }, function (error) {
                registerError(error, 'creating product');
            });
        };

        $scope.createAttachment = function () {
            var item = {
                name: $scope.newAttachmentName,
                path: $scope.newAttachmentPath,
                extension: $scope.newAttachmentExtension,
                productID: $scope.product.id
            };
            console.log(item);

            AttachmentsService.create(item).then(function (response) {
                $scope.retrieve();
            }, function (error) {
                registerError(error, 'creating attachment');
            });
        };

        $scope.retrieve = function () {
            ProductsService.retrieveAll($routeParams.productID).then(function (response) {
                $scope.product = response.data;
            }, function (error) {
                registerError(error, 'retrieving products');
            });

            CategoriesService.retrieveAll().then(function (response) {
                $scope.categories = response.data;
            }, function (error) {
                registerError(error, 'retrieving categories');
            });
        };

        $scope.prepare = function () {
            CategoriesService.retrieveAll().then(function (response) {
                $scope.categories = response.data;
            }, function (error) {
                registerError(error, 'retrieving categories');
            });
        };

    }]);