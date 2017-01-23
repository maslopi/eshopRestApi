'use strict';
var app = angular.module('app', ['ngRoute', 'ngCookies', 'autocomplete','ngDialog']);

app.config(['$routeProvider',
	function ($routeProvider) {
		$routeProvider.
			when('/categories', {
				templateUrl: 'pages/category.html',
				controller: 'CategoriesController'
			}).
			when('/products/:productID', {
				templateUrl: 'pages/item.html',
				controller: 'DetailsController'
			}).
			when('/products/category/:categoryName', {
				templateUrl: 'pages/category.html',
				controller: 'CategoriesController'
			}).
		    when('/index', {
			    templateUrl: 'pages/main.html',
			    controller: 'CategoriesController'
		    }).
		    when('/login', {
			    templateUrl: 'pages/login.html',
			    controller: 'LoginController'
		    }).
		    when('/register', {
			    templateUrl: 'pages/register.html',
			    controller: 'UsersController'
		    }).
		    when('/accountsettings', {
			    templateUrl: 'pages/accountsettings.html',
			    controller: 'UsersController'
		    }).
		    when('/contact', {
			    templateUrl: 'pages/contact.html',
			    controller: 'CategoriesController'
		    }).
		    when('/regulations', {
			    templateUrl: 'pages/regulations.html',
			    controller: 'CategoriesController'
		    }).
		    when('/guestbook', {
			    templateUrl: 'pages/guestbook.html',
			    controller: 'GuestbookController'
		    }).
		    when('/shoppingcart', {
			    templateUrl: 'pages/shoppingcart.html',
			    controller: 'ShoppingCartController'
		    }).
				when('/shoppingcarthistory',{
					templateUrl: 'pages/shoppingcarthistory.html',
					controller: 'OrdersController'
				}).
		    when('/articles', {
			    templateUrl: 'pages/articles.html',
			    controller: 'ArticlesController'
		    }).
		    otherwise({
          //templateUrl: 'pages/404.html'
			    redirectTo: 'index'
		    });
}]);

app.config(['ngDialogProvider', function (ngDialogProvider) {
    ngDialogProvider.setDefaults({
        className: 'ngdialog-theme-default',
        plain: false,
        showClose: true,
        closeByDocument: true,
        closeByEscape: true,
        appendTo: false,
        preCloseCallback: function () {
            console.log('default pre-close callback');
        }
    });
}]);

app.controller('MainCtrl', ['$route', '$routeParams', '$location', '$rootScope', '$scope',
  function($route, $routeParams, $location, $rootScope, $scope) {
    this.$route = $route;
    this.$location = $location;
    this.$routeParams = $routeParams;
    $scope.getLoggedUser = function() {
      return $rootScope.loggedUserName;
    };
  }
]);