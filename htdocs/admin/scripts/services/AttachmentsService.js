app.service('AttachmentsService', function ($http) {
    'use strict';

    const attachmentsLocation = function (path) {
        path = path || '';
        return (Shop.server + 'attachment/' + path);
    };

    this.create = function (attachment) {
        var promise = $http.post(attachmentsLocation('product/'+attachment.productID), attachment).then(function (response) {
            return response;
        });
        return promise;
    };

    this.update = function (attachment) {
        var promise = $http.put(attachmentsLocation('product/'+attachment.productID), attachment).then(function (response) {
            return response;
        });
        return promise;
    };

    this.delete = function (id) {
        var promise = $http.delete(attachmentsLocation(id + '/')).then(function (response) {
            return response;
        });
        return promise;
    }
});