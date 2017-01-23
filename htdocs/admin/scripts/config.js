var app = angular.module('app', ['ngRoute', 'ngCookies']);

app.factory('sessionInjector', ['$cookieStore', function ($cookieStore) {
    var sessionInjector = {
        request: function ($config) {
            var accessToken = $cookieStore.get('accessToken');
            if (typeof accessToken !== "undefined") {
                $config.headers['Authorization'] = "Bearer " + accessToken;
            }
            return $config;
        }
    };
    return sessionInjector;
}]);

app.config(['$httpProvider', function ($httpProvider) {
    $httpProvider.interceptors.push('sessionInjector');
}]);

// configure our routes
app.config(function ($routeProvider) {
    $routeProvider
        .when('/access_token=:accessToken', {
            template: '',
            controller: 'LoginController'
        }).when('/login', {
            templateUrl: 'pages/login.html',
            controller: 'LoginController'
        }).when('/index', {
            templateUrl: 'pages/index.html',
            controller: 'IndexController'
        }).when('/users', {
            templateUrl: 'pages/users.html',
            controller: 'UsersTableController'
        }).when('/customers', {
            templateUrl: 'pages/users.html',
            controller: 'CustomersTableController'
        }).when('/sellers', {
            templateUrl: 'pages/users.html',
            controller: 'SellersTableController'
        }).when('/moderators', {
            templateUrl: 'pages/users.html',
            controller: 'ModeratorsTableController'
        }).when('/administrators', {
            templateUrl: 'pages/users.html',
            controller: 'AdministratorsTableController'
        }).when('/user-add', {
            templateUrl: 'pages/user-add.html',
            controller: 'UserController'
        }).when('/users/:userID', {
            templateUrl: 'pages/user-edit.html',
            controller: 'UserController'
        }).when('/products', {
            templateUrl: 'pages/products.html',
            controller: 'ProductsTableController'
        }).when('/product-add', {
            templateUrl: 'pages/product-add.html',
            controller: 'ProductController'
        }).when('/products/:productID', {
            templateUrl: 'pages/product-edit.html',
            controller: 'ProductController'
        }).when('/orders', {
            templateUrl: 'pages/orders.html',
            controller: 'OrdersTableController'
        }).when('/categories', {
            templateUrl: 'pages/categories.html',
            controller: 'CategoriesTableController'
        }).when('/categories/:categoryID', {
            templateUrl: 'pages/subcategories.html',
            controller: 'SubcategoriesTableController'
        }).when('/feedbacks', {
            templateUrl: 'pages/feedbacks.html',
            controller: 'ProductsFeedbacksTableController'
        }).when('/guestbook', {
            templateUrl: 'pages/guestbook.html',
            controller: 'GuestbookTableController'
        }).when('/articles', {
            templateUrl: 'pages/articles.html',
            controller: 'ArticlesTableController'
        }).when('/article-add', {
            templateUrl: 'pages/article-add.html',
            controller: 'ArticleController'
        }).when('/articles/:articleID', {
            templateUrl: 'pages/article-edit.html',
            controller: 'ArticleController'
        }).when('/reports', {
            templateUrl: 'pages/reports.html',
            controller: 'ReportsController'
        }).when('/rules', {
            templateUrl: 'pages/rules.html',
            controller: 'RulesController'
        }).when('/company-data', {
            templateUrl: 'pages/company-data.html',
            controller: 'CompanyDataController'
        }).
        otherwise({
            redirectTo: 'index'
        });
});