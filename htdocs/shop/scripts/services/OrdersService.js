app.service('OrdersService', function ($http) {
	'use strict';

	const ordersLocation = function (path) {
		path = path || '';
		return (Shop.server + path);
	};

	this.create = function (order, userId) {
		order.userID = userId;
		order.date = new Date();
		order.stateID = 1;
		var promise = $http.post('http://127.0.0.1:8000/order/', order).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAllByUserId = function (id) {
		var promise = $http.get(ordersLocation('users/' + id + '/orders/')).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAll = function () {
		var promise = $http.get(ordersLocation('order/')).then(function (response) {
			return response;
		});
		return promise;
	};

  this.retrieveAllByCurrentUser = function () {
		var promise = $http.get(ordersLocation('my-orders')).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(ordersLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (order) {
		var promise = $http.put(ordersLocation(), order).then(function (response) {
			return response;
		});
		return promise;
	};

	this.delete = function (id) {
		var promise = $http.delete(ordersLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};
});
