app.controller('ProductsFeedbacksTableController', ['$scope', 'ProductsFeedbacksService',
    function ($scope, ProductsFeedbacksService) {
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
                ProductsFeedbacksService.delete(id).then(function (response) {
                    $scope.retrieveAll();
                }, function (error) {
                    registerError(error, 'deleting feedback');
                });
            }
        };

        $scope.retrieveAll = function (id) {
            ProductsFeedbacksService.retrieveAll(id).then(function (response) {
                $scope.feedbacks = response.data;
            }, function (error) {
                registerError(error, 'retrieving feedbacks');
            });
        };

        (function () {
            $scope.retrieveAll();
        })();

    }]);