app.service('CategoriesService', function ($http) {
	'use strict';

	const categoriesLocation = function (path) {
		path = path || '';
		return (Shop.server + 'productcategory/' + path);
	};

	this.create = function (role) {
		var promise = $http.post(categoriesLocation(), role).then(function (response) {
			alert(role);
			return response;
		});
		return promise;
	};

	this.retrieveAll = function () {
		var promise = $http.get(categoriesLocation()).then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieve = function (id) {
		var promise = $http.get(categoriesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	};

	this.update = function (role) {
		var promise = $http.put(categoriesLocation(), role).then(function (response) {
			return response;
		});
		return promise;
	}

	this.delete = function (id) {
		var promise = $http.delete(categoriesLocation(id)).then(function (response) {
			return response;
		});
		return promise;
	}


	//Rules and Company data
	this.retrieveRules = function () {
		var promise = $http.get('http://127.0.0.1:8000/rules').then(function (response) {
			return response;
		});
		return promise;
	};

	this.retrieveCompanyData = function () {
		var promise = $http.get('http://127.0.0.1:8000/companydata').then(function (response) {
			return response;
		});
		return promise;
	};
});
