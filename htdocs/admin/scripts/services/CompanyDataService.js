app.service('CompanyDataService', function ($http) {
    'use strict';

    const companyDataLocation = function (path) {
        path = path || '';
        return (Shop.server + 'companydata/' + path);
    };

    this.retrieve = function (id) {
        var promise = $http.get(companyDataLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (data) {
        var promise = $http.put(companyDataLocation(1 + '/'), data ).then(function (response) {
            return response;
        });
        return promise;
    };
});