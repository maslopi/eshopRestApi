app.controller("ShoppingCartController", ['$rootScope', '$scope', '$cookies', '$q', '$route', 'ProductsService', 'OrdersService', 'ngDialog',
  function($rootScope, $scope, $cookies, $q, $route, ProductsService, OrdersService, ngDialog) {
    'use strict';
    $scope.total = 0;
    $rootScope.theme = 'ngdialog-theme-default';
    $scope.text = '';
    $scope.color = '';

    $scope.reloadRoute = function() {
      $route.reload();
    }

    $scope.removeAll = function() {
      var cookies = $cookies.getAll();
      angular.forEach(cookies, function(v, k) {
        if(!isNaN(k)){
          $cookies.remove(k);
        }
      });
      //  $route.reload();
    };

    $scope.$on('$viewContentLoaded', function() {
      $scope.getAll();
    });


    $scope.getAll = function() {
      var cookies = $cookies.getAll();
      $scope.products = [];
      var promises = [];
      var i = 0;
      angular.forEach(cookies, function(v, k) {
        if(!isNaN(k)){
        console.log("key: " + k + ", value:  " + v);
        promises[i] = ProductsService.retrieve(k).then(function(response) {
          $scope.products = $scope.products.concat(response.data);
          console.log(i);
          $scope.products[i].quantity = v;
          i++;
        }, function(error) {
          console.log('error');
        })};
      });

      $q.all(promises).then(function() {
        angular.forEach($scope.products, function(value, key) {
          $scope.total = value.quantity * value.price + $scope.total;
          console.log("Quantiy: " + value.quantity);
          console.log("Price: " + value.price);
        });
        console.log($scope.products);
        console.log($scope.total);
      });
    };

    $scope.addProduct = function(id, quantity) {
      $cookies.put(id, quantity);
      console.log("Dodano id" + id + "o ilosci" + quantity);
      $route.reload();

    };

    $scope.addOneProduct = function(id) {
      var i = $cookies.get(id);
      if (i == null)
        console.log("Brak produktu o podanym id" + id);
      else {
        i++;
        $cookies.put(id, i);
      }
      $route.reload();

    };

    $scope.deleteOneProduct = function(id) {
      var i = $cookies.get(id);
      if (i == 1) {
        $cookies.remove(id);
      } else {
        if (i == null)
          console.log("Brak produktu o podanym id");
        else {
          i--;
          $cookies.put(id, i);
        }
      }
      $route.reload();
    };

    $scope.deleteProduct = function(id) {
      $cookies.remove(id);
      console.log("usunieto");
      $route.reload();

    };
    $scope.openDefault = function(total) {
      $scope.value = true;

      ngDialog.open({
        template: 'pages/payment.html',
        className: 'ngdialog-theme-default',
        scope: $scope
      });
    };

    $scope.pay = function() {
      angular.forEach($scope.products, function(value, key) {

        var order = {
          "products": [{
            "productID": value.id,
            "amount": value.quantity,
            "price": value.price
          }]
        };
        $scope.userId = $cookies.get('userId');
        OrdersService.create(order, $scope.userId).then(function(response) {
          $scope.order = {};
          if ($scope.a != null & $scope.b != null & $scope.c != null) {
            $scope.text = "Zrealizowano platnosc!";
          } else {
            $scope.text = "Nie zrealizowano platnosci!";
          }
        }, function(error) {
          console.log("error - create order");
        });
      });
    };
  }
]);
