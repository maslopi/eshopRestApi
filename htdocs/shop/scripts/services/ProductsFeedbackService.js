app.service('ProductsFeedbackService', function ($http) {
	'use strict';


	const productsFeedbackLocation = function (path) {
		path = path || '';
		return (Shop.server + 'productfeedbacks/' + path);
	};

	this.create = function (productFeedback) {
		var promise = $http.post('http://127.0.0.1:8000/productfeedback/', productFeedback).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAll = function (id) {
		var promise = $http.get('http://127.0.0.1:8000/productfeedbacks/product/' + id).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveAllRates = function (id) {
		var promise = $http.get('http://127.0.0.1:8000/productrates/product/' + id).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(productsFeedbackLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (productFeedback) {
		var promise = $http.put(productsFeedbackLocation(), productFeedback).then(function (response) {
			return response;
		});
		return promise;
	}

	this.delete = function (id) {
		var promise = $http.delete(productsFeedbackLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	}
});
