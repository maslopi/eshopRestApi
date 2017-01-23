app.service('UsersService', function ($http) {
	'use strict';

	const usersLocation = function (path) {
		path = path || '';
		return (Shop.server + 'user/' + path);
	};

	this.create = function (user) {
		var promise = $http.post(usersLocation(), user).then(function (response) {
			return response;
		});
		return promise;
};

	this.retrieveAll = function () {
		var promise = $http.get(usersLocation()).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(usersLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (user) {
		var promise = $http.put(usersLocation(user.id), user).then(function (response) {
			return response;
		});
		return promise;
	};

	this.delete = function (id) {
		var promise = $http.delete(usersLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.find = function (email, password) {
		var promise = $http.get(Shop.server + "users/find/" + email + "/" + password).then(function (response) {
			return response;
		});
		return promise;
	};
});
