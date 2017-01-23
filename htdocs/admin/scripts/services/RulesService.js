app.service('RulesService', function ($http) {
    'use strict';

    const rulesLocation = function (path) {
        path = path || '';
        return (Shop.server + 'rules/' + path);
    };

    this.retrieve = function (id) {
        var promise = $http.get(rulesLocation(id)).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (rules) {
        var promise = $http.put(rulesLocation(1 + '/'), rules).then(function (response) {
            return response;
        });
        return promise;
    };
});