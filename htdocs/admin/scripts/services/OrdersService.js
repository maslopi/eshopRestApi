app.service('OrdersService', function ($http) {
    'use strict';

    const ordersLocation = function (path) {
        path = path || '';
        return (Shop.server + 'order/' + path);
    };

    this.create = function (order) {
        var promise = $http.post(ordersLocation(), order).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieveAll = function (id) {
        var promise = $http.get(ordersLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieve = function (id) {
        var promise = $http.get(ordersLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (order) {
        var promise = $http.put(ordersLocation(order.id + '/'), order).then(function (response) {
            return response;
        });
        return promise;
    };

    this.delete = function (id) {
        var promise = $http.delete(ordersLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});