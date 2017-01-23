app.controller('GuestbookTableController', ['$scope', 'CompanyFeedbacksService', function ($scope, CompanyFeedbacksService) {
    'use strict';

    $scope.feedbacks = [];

    var registerError = function (error, message) {
        $scope.error = {
            code: error.status,
            message: error.statusText,
            when: message
        };
    };

    $scope.delete = function (id) {
        var c = confirm("Potwierdź usunięcie");

        if (c == true) {
            CompanyFeedbacksService.delete(id).then(function (response) {
                $scope.retrieveAll();
            }, function (error) {
                registerError(error, 'deleting role');
            });
        }
    };

    $scope.retrieveAll = function (id) {
        CompanyFeedbacksService.retrieveAll(id).then(function (response) {
            $scope.feedbacks = response.data;
        }, function (error) {
            registerError(error, 'retrieving products');
        });
    };

    (function () {
        $scope.retrieveAll();
    })();

}]);