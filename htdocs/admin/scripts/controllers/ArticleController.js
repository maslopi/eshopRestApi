app.controller('ArticleController', ['$scope', '$routeParams', '$location', 'ArticlesService',
    function ($scope, $routeParams, $location, ArticlesService) {
        'use strict';

        $scope.article = [];

        var registerError = function (error, message) {
            $scope.error = {
                code: error.status,
                message: error.statusText,
                when: message
            };
        };

        $scope.update = function (article) {
            ArticlesService.update(article).then(function (response) {
                $location.path("/articles");
            }, function (error) {
                registerError(error, 'updating article');
            });
        };

        $scope.edit = function (article) {
            $scope.update({
                id: article.id,
                date: article.date,
                title: article.title,
                body: article.body,
                user: {id: 1}
            });
        };

        $scope.create = function (article) {
            var item = {
                date: article.date,
                title: article.title,
                body: article.body,
                user: {id: 1}
            };

            ArticlesService.create(item).then(function (response) {
                $location.path("/articles");
            }, function (error) {
                registerError(error, 'creating article');
            });
        };

        $scope.retrieve = function () {
            ArticlesService.retrieveAll($routeParams.articleID).then(function (response) {
                $scope.article = response.data;
            }, function (error) {
                registerError(error, 'retrieving articles');
            });
        };

    }]);