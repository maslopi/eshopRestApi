app.controller('IndexController', ['$scope', 'ProductsFeedbacksService', 'OrdersService', '$cookieStore', '$window',
    function ($scope, ProductsFeedbacksService, OrdersService, $cookieStore, $window) {
        'use strict';

        $scope.feedbacks = [];
        $scope.orders = [];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.retrieveAll = function (id) {
            ProductsFeedbacksService.retrieveAll(id).then(function (response) {
                $scope.feedbacks = response.data;
            }, function (error) {
                registerError(error, 'retrieving products feedbacks');
            });

            OrdersService.retrieveAll(id).then(function (response) {
                $scope.orders = response.data;
            }, function (error) {
                registerError(error, 'retrieving orders');
            });
        };

        (function () {
            if($cookieStore.get('isLoggedIn')){
                $scope.retrieveAll();
            }
            else{
                $window.location.href = Shop.client + '#/login';
            }
        })();

    }]);