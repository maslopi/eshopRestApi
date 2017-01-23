app.controller('GuestbookController', ['$scope', '$http', '$rootScope', 'GuestbookService', 'UsersService', 'LoginService', '$cookies', '$cookieStore',
  function($scope, $http, $rootScope, GuestbookService, UsersService, LoginService, $cookies, $cookieStore) {
  'use strict';

  $scope.feedbacks = [];
  $scope.feedback = {};
  $scope.users = {};
  $scope.emails = {};

  $http({
    method: 'GET',
    url: 'http://127.0.0.1:8000/user/'
  }).then(function(data) {
    console.log(data);
  });

  $scope.getLoggedUser = function() {
    return $cookies.get('userName');
  };

  var registerError = function(error, message) {
    $scope.error = {
      code: error.status,
      message: error.statusText,
      when: message
    };
  };

  $scope.create = function(feedback) {
    GuestbookService.create(feedback).then(function(response) {
      $scope.retrieveAll();
      $('input[type=text]').filter(':first').focus();

    }, function(error) {
      registerError(error, 'creating feedback');
    });
  };
  $scope.update = function(feedback) {
    GuestbookService.update(feedback).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'updating feedback');
    });
  };
  $scope.edit = function(feedback) {
    if (feedback.editing) {
      $scope.update({
        id: feedback.id,
        enabled: feedback.enabled,
        name: feedback.name,
        description: feedback.description,
        price: feedback.price
      });
    }
    feedback.editing = !feedback.editing;
  };
  $scope.delete = function(id) {
    GuestbookService.delete(id).then(function(response) {
      $scope.retrieveAll();

    }, function(error) {
      registerError(error, 'deleting feedback');
    });
  };
  $scope.retrieveAll = function() {
    GuestbookService.retrieveAll().then(function(response) {
      $scope.feedbacks = response.data;

    }, function(error) {
      registerError(error, 'retrieving all feedbacks');
    });
  };

  (function() {
    GuestbookService.retrieveAll().then(function(response) {
      $scope.feedbacks = response.data;
    }, function(error) {
      registerError(error, 'fetching feedbacks');
    });
    UsersService.retrieveAll().then(function(response) {
      $scope.users = response.data;
    }, function(error) {
      registerError(error, 'retrieving all users');
    });

  })();

  $scope.getLoggedUser = function() {
    return $cookieStore.get('userName');
  };

  $scope.getUserId = function() {
    return $cookieStore.get('userId');
  };

  $scope.isLogged = function() {
    return $cookieStore.get('isLoggedIn');
  };

}]);

app.filter('range', function() {
  return function(input, total) {
    total = parseInt(total);
    for (var i = 0; i < total; i++) {
      input.push(i);
    }
    return input;
  };
});
