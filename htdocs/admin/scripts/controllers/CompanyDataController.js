app.controller('CompanyDataController', ['$scope', '$routeParams', '$location', 'CompanyDataService',
    function ($scope, $routeParams, $location, CompanyDataService) {
        'use strict';

        $scope.companyData = '';

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (rules) {
            CompanyDataService.update(rules).then(function (response) {
                $location.path("/company-data");
            }, function (error) {
                registerError(error, 'updating comapny data');
            });
        };

        $scope.edit = function (companyData) {
            $scope.update({
                id: 1,
                content: companyData.content
            });
        };

        (function () {
            CompanyDataService.retrieve(1).then(function (response) {
                $scope.companyData = response.data;
            }, function (error) {
                registerError(error, 'retrieving comapny data');
            });
        })();

    }]);