app.controller('OrdersTableController', ['$scope', 'OrdersService',
    function ($scope, OrdersService) {
        'use strict';

        $scope.orders = [];
        $scope.orderStates = [
            {id: 1, name: "Zamówione"},
            {id: 2, name: "W trakcie realizacji"},
            {id: 3, name: "Zrealizowane"}
        ];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (order) {
            OrdersService.update(order).then(function (response) {
            }, function (error) {
                registerError(error, 'updating order');
            });
        };

        $scope.edit = function (order) {
            // console.log(order);
            $scope.update(order);
        };

        $scope.retrieveAll = function () {
            OrdersService.retrieveAll().then(function (response) {
                $scope.orders = response.data;
            }, function (error) {
                registerError(error, 'retrieving orders');
            });
        };

        (function () {
            $scope.retrieveAll();
        })();

    }]);