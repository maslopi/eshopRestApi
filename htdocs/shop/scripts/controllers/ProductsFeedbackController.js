app.controller('ProductsFeedbackController', ['$scope','$rootScope', 'ProductsFeedbackService','UsersService', function($scope,$rootScope, ProductsFeedbackService,UsersService) {
  'use strict';

  $scope.productFeedbacks = [];
  $scope.productFeedback = {
    enabled: true
  };

  $scope.create = function(productFeedback) {
    productFeedback.productID = productFeedback.product.id;
    productFeedback.userID = productFeedback.user.id;
    ProductsFeedbackService.create(productFeedback).then(function(response) {
      $scope.productFeedback = {};
      $scope.retrieveAll();
      $('input[type=text]').filter(':first').focus();

    }, function(error) {
console.log("error");
    });
  };

  $scope.update = function(productFeedback) {
    ProductsFeedbackService.update(productFeedback).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      console.log("error");
    });
  };

  $scope.edit = function(productFeedback) {
    if (productFeedback.editing) {
      $scope.update({
        id: productFeedback.id,
        enabled: productFeedback.enabled,
        name: productFeedback.name,
        description: productFeedback.description,
        price: productFeedback.price
      });
    }
    productFeedback.editing = !productFeedback.editing;
  };

  $scope.delete = function(id) {
    ProductsFeedbackService.delete(id).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      console.log("error");
    });
  };

  $scope.retrieveAll = function(id) {
    ProductsFeedbackService.retrieveAll(id).then(function(response) {
      $scope.productFeedbacks = response.data;

    }, function(error) {
      console.log("error");
    });
  };
  //
  //(function() {
  //  UsersService.retrieveAll().then(function (response) {
  //    $scope.users = response.data;
  //  }, function (error) {
  //    console.log("error");
  //  });
  //})();

}]);