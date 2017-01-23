app.service('CompanyFeedbacksService', function ($http) {
    'use strict';

    const companyFeedbackLocation = function (path) {
        path = path || '';
        return (Shop.server + 'companyfeedback/' + path);
    };

    this.create = function (feedback) {
        var promise = $http.post(companyFeedbackLocation(), feedback).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieveAll = function (id) {
        var promise = $http.get(companyFeedbackLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.retrieve = function (id) {
        var promise = $http.get(companyFeedbackLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (feedback) {
        var promise = $http.put(companyFeedbackLocation(), feedback).then(function (response) {
            return response;
        });
        return promise;
    }

    this.delete = function (id) {
        var promise = $http.delete(companyFeedbackLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});
