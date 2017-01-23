app.service('ArticlesService', function ($http) {
	'use strict';

	const articlesLocation = function (path) {
		path = path || '';
		return (Shop.server + 'article/' + path);
	};

	this.create = function (role) {
		var promise = $http.post(articlesLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAll = function () {
		var promise = $http.get(articlesLocation()).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(articlesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (role) {
		var promise = $http.put(articlesLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	}

	this.delete = function (id) {
		var promise = $http.delete(articlesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	}
});
