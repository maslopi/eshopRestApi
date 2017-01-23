app.controller('ReportsController', ['$scope', 'OrdersService',
    function ($scope, OrdersService) {
        'use strict';

        $scope.orders = [];
        $scope.ordersCount = null;
        $scope.itemsCount = null;
        $scope.value = null;

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (order) {
            OrdersService.update(order).then(function (response) {
                $location.path("/products");
            }, function (error) {
                registerError(error, 'updating order');
            });
        };

        $scope.edit = function (order) {
            $scope.update(order);
        };

        $scope.generate = function () {
            var date = $scope.reportMonth.split("-");
            var month = date[1];
            var year = date[0];

            var ordersCountTmp = 0;
            var itemsCountTmp = 0;
            var valueTmp = 0;

            angular.forEach($scope.orders, function (order) {
                var dateTmp = order.date.split("-");
                var monthTmp = dateTmp[1];
                var yearTmp = dateTmp[0];

                if (month == monthTmp && year == yearTmp) {
                    ordersCountTmp++;
                    angular.forEach(order.products, function (products) {
                        itemsCountTmp += products.amount;
                        valueTmp += products.price * products.amount;
                    });
                }
            });

            $scope.ordersCount = ordersCountTmp;
            $scope.itemsCount = itemsCountTmp;
            $scope.value = valueTmp;
        };

        $scope.retrieveAll = function () {
            OrdersService.retrieveAll().then(function (response) {
                $scope.orders = response.data;

                var ordersCountTmp = 0;
                var itemsCountTmp = 0;
                var valueTmp = 0;

                angular.forEach(response.data, function (order) {
                    ordersCountTmp++;
                    angular.forEach(order.products, function (products) {
                        itemsCountTmp += products.amount;
                        valueTmp += products.price * products.amount;
                    });
                });

                $scope.ordersCount = ordersCountTmp;
                $scope.itemsCount = itemsCountTmp;
                $scope.value = valueTmp;
            }, function (error) {
                registerError(error, 'retrieving orders');
            });
        };

        (function () {
            $scope.retrieveAll();
        })();

    }]);