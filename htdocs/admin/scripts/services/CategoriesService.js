app.service('CategoriesService', function ($http) {
    'use strict';

    const articlesLocation = function (path) {
        path = path || '';
        return (Shop.server + 'productcategory/' + path);
    };

    this.create = function (category) {
        var promise = $http.post(articlesLocation(), category).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieveAll = function (id) {
        var promise = $http.get(articlesLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieve = function (id) {
        var promise = $http.get(articlesLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (category) {
        var promise = $http.put(articlesLocation(category.id), category).then(function (response) {
            return response;
        });
        return promise;
    };

    this.delete = function (id) {
        var promise = $http.delete(articlesLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});