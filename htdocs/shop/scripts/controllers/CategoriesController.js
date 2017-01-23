app.controller('CategoriesController', ['$scope', '$routeParams', '$location', '$rootScope','$sce', 'CategoriesService', 'ProductsService', 'LoginService',
function($scope, $routeParams, $location, $rootScope,$sce, CategoriesService, ProductsService, LoginService) {
  'use strict';


  //$http.defaults.useXDomain = true;
  $scope.which = $routeParams.categoryName;
  $scope.categories = [];
  $scope.category = {
    enabled: true
  };

  var registerError = function(error, message) {
    $scope.error = {
      code: error.status,
      message: error.statusText,
      when: message
    };
  };

  $scope.create = function(category) {
    CategoriesService.create(category).then(function(response) {
      $scope.category = {};
      $scope.retrieveAll();
      $('input[type=text]').filter(':first').focus();

    }, function(error) {
      console.log("fetching products");
    });
  };
  $scope.update = function(category) {
    CategoriesService.update(category).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      console.log("fetching products");
    });
  };
  $scope.edit = function(category) {
    if (category.editing) {
      $scope.update({
        id: category.id,
        enabled: category.enabled,
        name: category.name,
        description: category.description,
        price: category.price
      });
    }
    category.editing = !category.editing;
  };
  $scope.delete = function(id) {
    CategoriesService.delete(id).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      console.log("deleting category");
    });
  };
  $scope.retrieveAll = function() {
    CategoriesService.retrieveAll().then(function(response) {
      $scope.categories = response.data;

    }, function(error) {
      console.log("fetching products");
    });
  };
  (function() {
    CategoriesService.retrieveAll().then(function(response) {
      $scope.categories = response.data;
    }, function(error) {
      console.log("fetching categories");
    });
    CategoriesService.retrieveRules().then(function(response) {
      $scope.rules = $sce.trustAsHtml(response.data[0].content);
    }, function(error) {
      console.log("fetching rules");
    });
    CategoriesService.retrieveCompanyData().then(function(response) {
      $scope.companyData = $sce.trustAsHtml(response.data[0].content);
    }, function(error) {
      console.log("fetching rules");
    });
    if (!angular.isUndefined($routeParams.categoryName)) {
      $scope.catName = $routeParams.categoryName;
      // TODO get '/products/category/' + $routeParams.categoryName
      // categoryName lub categoryName
      ProductsService.retrieveAll('category/' + $routeParams.categoryName).then(function(response) {
        $scope.products = response.data;
      }, function(error) {
        console.log("fetching products");
      });
    } else {
      // TODO get '/products'
      ProductsService.retrieveAllProducts().then(function(response) {
        $scope.products = response.data;
      }, function(error) {
        console.log("fetching products");
      });
    };

  })();
}]);
