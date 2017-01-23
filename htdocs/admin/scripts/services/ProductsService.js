app.service('ProductsService', function ($http) {
    'use strict';

    const productsLocation = function (path) {
        path = path || '';
        return (Shop.server + 'product/' + path);
    };

    this.create = function (product) {
        var promise = $http.post(productsLocation(), product).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieveAll = function (id) {
        var promise = $http.get(productsLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieve = function (id) {
        var promise = $http.get(productsLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (product) {
        var promise = $http.put(productsLocation(product.id + '/'), product).then(function (response) {
            return response;
        });
        return promise;
    };

    this.delete = function (id) {
        var promise = $http.delete(productsLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});