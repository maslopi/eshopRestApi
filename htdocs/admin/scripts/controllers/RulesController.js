app.controller('RulesController', ['$scope', '$routeParams', '$location', 'RulesService',
    function ($scope, $routeParams, $location, RulesService) {
        'use strict';

        $scope.rules = '';

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (rules) {
            RulesService.update(rules).then(function (response) {
                $location.path("/rules");
            }, function (error) {
                registerError(error, 'updating article');
            });
        };

        $scope.edit = function (rules) {
            $scope.update({
                id: 1,
                content: rules.content
            });
        };

        (function () {
            RulesService.retrieve(1).then(function (response) {
                $scope.rules = response.data;
            }, function (error) {
                registerError(error, 'retrieving articles');
            });
        })();

    }]);