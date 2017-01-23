app.controller("DetailsController", ['$scope', '$rootScope', '$http', '$routeParams', '$cookies','$route', 'ProductsService', 'CategoriesService', 'ProductsFeedbackService', 'LoginService', 'UsersService', '$cookieStore',
  function($scope, $rootScope, $http, $routeParams, $cookies,$route, ProductsService, CategoriesService, ProductsFeedbackService, LoginService, UsersService, $cookieStore) {
    product = {
      enabled: true
    };
    $scope.users = {};
    $scope.text = '';
    $scope.productFeedback = { product:{id:0}};
    ProductsService.retrieve($routeParams.productID).then(function(response) {
        $scope.product = response.data;
        ProductsFeedbackService.retrieveAll($routeParams.productID).then(function(response) {
          $scope.productsFeedback = response.data;
        }, function(error) {
          console.log("GSRetrieveAll");

        });

      },
      function(error) {
        console.log("retrieve");
      });

    $scope.create = function(productFeedback) {
      productFeedback.productID = $routeParams.productID
      ProductsFeedbackService.create(productFeedback).then(function(response) {
        $scope.productFeedback = {};
        $route.reload();

      }, function(error) {
        registerError(error, 'creating feedback');
      });
    };

    $scope.getLoggedUser = function() {
      return $rootScope.loggedUserName;
    };

    $scope.addProduct = function(id, quantity) {
      $cookies.put(id, quantity);
      $scope.text = "Dodano produkt do koszyka!";
      console.log("Dodano ciastko o id rownym " + id + "oraz o ilosci:" + quantity);
    };

    ProductsService.retrieveAll().then(function(response) {
      $scope.category = response.data;
    }, function(error) {
      console.log("retrieveAll");

    });
    ProductsFeedbackService.retrieveAll($routeParams.productID).then(function(response) {
      $scope.productsFeedback = response.data;
    }, function(error) {
      console.log("GSRetrieveAll");
    });

    ProductsFeedbackService.retrieveAllRates($routeParams.productID).then(function(response) {
      $scope.productRates = response.data;
    }, function(error) {
      console.log("GSRetrieveAll");
    });

    UsersService.retrieveAll().then(function(response) {
      $scope.users = response.data;
    }, function(error) {
      console.log("getUser error");
    });

    $scope.getLoggedUser = function() {
      return $cookieStore.get('userName');
    };

    $scope.getUserId = function() {
      return $cookieStore.get('userId');
    };

    $scope.isLogged = function() {
      return $cookieStore.get('isLoggedIn');
    };
  }
]);
