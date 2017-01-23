app.controller('OrdersController', ['$scope', 'OrdersService', 'UsersService', '$cookieStore', function($scope, OrdersService, UsersService, $cookieStore) {
  'use strict';

  $scope.orders = [];
  $scope.order = {
    enabled: true
  };

  $scope.create = function(order) {
    $scope.userId = $cookieStore.get('userId');
    OrdersService.create(order, $scope.userId).then(function(response) {
      $scope.order = {};
      $scope.retrieveAll();
      $('input[type=text]').filter(':first').focus();

    }, function(error) {
      registerError(error, 'creating order');
    });
  };

  $scope.update = function(order) {
    OrdersService.update(order).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'updating order');
    });
  };

  $scope.edit = function(order) {
    if (order.editing) {
      $scope.update({
        id: order.id,
        enabled: order.enabled,
        name: order.name,
        description: order.description,
        price: order.price
      });
    }
    order.editing = !order.editing;
  };

  $scope.delete = function(id) {
    OrdersService.delete(id).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'deleting order');
    });
  };

  $scope.retrieveAllByUserId = function(id) {
    OrdersService.retrieveAllByUserId(id).then(function(response) {
      $scope.orders = response.data;

    }, function(error) {
      registerError(error, 'retrieving all orders');
    });
  };

  $scope.retrieveAllByCurrentUser = function() {
    $scope.userId = $cookieStore.get('userId');
    OrdersService.retrieveAllByUserId($scope.userId).then(function(response) {
      $scope.orders = response.data;

    }, function(error) {
      registerError(error, 'retrieving all orders');
    });
  };

  (function() {
    $scope.userId = $cookieStore.get('userId');
    OrdersService.retrieveAllByUserId($scope.userId).then(function(response) {
      $scope.orders = response.data;
      console.log('Retrieved order:' + response.data);
    }, function(error) {
      registerError(error, 'retrieving all orders');
    });


  })();

}]);
