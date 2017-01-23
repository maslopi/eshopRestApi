app.service('ProductsFeedbacksService', function ($http) {
    'use strict';

    const productsFeedbackLocation = function (path) {
        path = path || '';
        return (Shop.server + 'productfeedback/' + path);
    };

    this.create = function (feedback) {
        var promise = $http.post(productsFeedbackLocation(), feedback).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieveAll = function (id) {
        var promise = $http.get(productsFeedbackLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieve = function (id) {
        var promise = $http.get(productsFeedbackLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (feedback) {
        var promise = $http.put(productsFeedbackLocation(), feedback).then(function (response) {
            return response;
        });
        return promise;
    }

    this.delete = function (id) {
        var promise = $http.delete(productsFeedbackLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});
