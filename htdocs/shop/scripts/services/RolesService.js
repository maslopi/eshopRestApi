app.service('RolesService', function ($http) {
	'use strict';

	const rolesLocation = function (path) {
		path = path || '';
		return (Shop.server + path);
	};

	this.create = function (role) {
		var promise = $http.post(rolesLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAll = function () {
		var promise = $http.get(rolesLocation()).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(rolesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (role) {
		var promise = $http.put(rolesLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	}

	this.delete = function (id) {
		var promise = $http.delete(rolesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	}
});
