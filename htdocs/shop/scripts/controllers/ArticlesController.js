app.controller('ArticlesController', ['$scope', 'ArticlesService', function ($scope, ArticlesService) {
	'use strict';

	$scope.articles = [];
	$scope.article = {};

	var registerError = function (error, message) {
		$scope.error = {
			code: error.status,
			message: error.statusText,
			when: message
		};
	};
	$scope.getLoggedUser = function() {
		return $rootScope.loggedUserName;
	};
	$scope.create = function (articles) {
		ArticlesService.create(articles).then(function (response) {
			$scope.article = {};
			$scope.retrieveAll();
			$('input[type=text]').filter(':first').focus();

		}, function (error) {
			registerError(error, 'creating articles');
		});
	};
	$scope.update = function (articles) {
		ArticlesService.update(article).then(function (response) {
			$scope.retrieveAll();

		}, function (error) {
			registerError(error, 'updating article');
		});
	};
	$scope.edit = function (articles) {
		if (articles.editing) {
			$scope.update({
				id: article.id,
				userId: article.userId,
				date: article.date,
				title: article.title,
				body: article.body
			});
		}
		article.editing = !article.editing;
	};
	$scope.delete = function (id) {
		ArticlesService.delete(id).then(function (response) {
			$scope.retrieveAll();

		}, function (error) {
			registerError(error, 'deleting article');
		});
	};
	$scope.retrieveAll = function (id) {
		ArticlesService.retrieveAll(id).then(function (response) {
			$scope.articles = response.data;

		}, function (error) {
			registerError(error, 'retrieving all articles');
		});
	};

	(function () {
		ArticlesService.retrieveAll().then(function (response) {
			$scope.articles = response.data;
		}, function (error) {
			registerError(error, 'fetching articles');
		});

		})();

}]);
