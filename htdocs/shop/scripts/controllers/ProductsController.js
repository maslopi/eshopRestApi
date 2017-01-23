app.controller('ProductsController', ['$scope', 'ProductsService', function($scope, ProductsService) {
  'use strict';

  $scope.products = [];
  $scope.product = {
    enabled: true
  };

  $scope.Test = function(){
    $scope.create({
      id: null,
      name: "NazwaTest",
      description: "OpisTest",
      enabled: true,
      price: 15,
      category: {id:2}
    });
  }

  var registerError = function(error, message) {
    $scope.error = {
      code: error.status,
      message: error.statusText,
      when: message
    };
  };

  $scope.create = function(product) {
    ProductsService.create(product).then(function(response) {
      $scope.product = {};
      $scope.retrieveAll();
      $('input[type=text]').filter(':first').focus();

    }, function(error) {
      registerError(error, 'creating product');
    });
  };

  $scope.update = function(product) {
    ProductsService.update(product).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'updating product');
    });
  };

  $scope.edit = function(product) {
    if (product.editing) {
      $scope.update({
        id: product.id,
        enabled: product.enabled,
        name: product.name,
        description: product.description,
        price: product.price
      });
    }
    product.editing = !product.editing;
  };

  $scope.delete = function(id) {
    ProductsService.delete(id).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'deleting product');
    });
  };

  $scope.retrieveAll = function(id) {
    ProductsService.retrieveAll(id).then(function(response) {
      $scope.products = response.data;

    }, function(error) {
      registerError(error, 'retrieving all products');
    });
  };

  (function() {
    ProductsService.retrieveAll().then(function(response) {
      $scope.products = response.data;
    }, function(error) {
      registerError(error, 'fetching products');
    });

    $scope.isLogged = $cookies.get('isLoggedIn');
    $scope.userId = $cookies.get('userId');
  })();

}]);
