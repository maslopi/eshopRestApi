app.service('GuestbookService', function ($http) {
	'use strict';

	const guestbookLocation = function (path) {
		path = path || '';
		return (Shop.server + 'companyfeedback/' + path);
	};

	this.create = function (role) {
		var promise = $http.post(guestbookLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAll = function () {
		var promise = $http.get(guestbookLocation()).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(guestbookLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (role) {
		var promise = $http.put(guestbookLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	}

	this.delete = function (id) {
		var promise = $http.delete(guestbookLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	}
});
