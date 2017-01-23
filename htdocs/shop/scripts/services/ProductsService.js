app.service('ProductsService', function($http) {
  'use strict';

  const productsLocation = function(path) {
    path = path || '';
    return (Shop.server + 'product/' + path);
  };

  this.create = function(role) {
    var promise = $http.post('http://127.0.0.1:8000/api/product', role).then(function(response) {
      return response;
    });
    return promise;
  };

  this.retrieveAll = function(id) {
    var promise = $http.get(productsLocation(id)).then(function(response) {
      return response;
    });
    return promise;
  };

  this.retrieveAllProducts = function() {
    var promise = $http.get(productsLocation()).then(function(response) {
      return response;
    });
    return promise;
  };

  this.retrieve = function(id) {
    var promise = $http.get(productsLocation(id)).then(function(response) {
      return response;
    });
    return promise;
  };

  this.update = function(role) {
    var promise = $http.put(productsLocation(), role).then(function(response) {
      return response;
    });
    return promise;
  };

  this.retrievePicture = function(id) {
      var promise = $http.get('http://127.0.0.1:8000/attachment/' + id).then(function(response) {
        return response;
      });
      return promise;
  };

	this.retrievePictures = function() {
		var promise = $http.get('http://127.0.0.1:8000/attachment/').then(function(response) {
			return response;
		});
		return promise;
	};

  this.delete = function(id) {
    var promise = $http.delete(productsLocation(id)).then(function(response) {
      return response;
    });
    return promise;
  }
});
