app.controller('UsersController', ['$scope', '$rootScope', 'UsersService', 'RolesService', 'LoginService', '$cookies',
  function($scope, $rootScope, UsersService, RolesService, LoginService, $cookies) {
    'use strict';

    $scope.user = {
      enabled: true
    };
    $scope.roles = [];
    $scope.userX = '';
    $scope.text = '';

    var registerError = function(error, message) {
      $scope.error = {
        code: error.status,
        message: error.statusText,
        when: message
      };
    };

    $scope.create = function(user) {
      UsersService.create(user).then(function(response) {
        $scope.user = {};
        $scope.retrieveAll();
        $scope.text = "Rejestracja udana! Mozesz sie teraz zalogować!";
      }, function(error) {
        registerError(error, 'creating user');
      });
    };

    $scope.update = function(user) {
      UsersService.update(user).then(function(response) {
        $scope.retrieveAll();
        console.log(user);
      }, function(error) {
        registerError(error, 'updating user');
      });
    };

    $scope.delete = function(id) {
      UsersService.delete(id).then(function(response) {
        $scope.retrieveAll();

      }, function(error) {
        registerError(error, 'deleting user');
      });
    };

    $scope.retrieveAll = function() {
      UsersService.retrieveAll().then(function(response) {
        $scope.users = response.data;

      }, function(error) {
        registerError(error, 'retrieving all users');
      });
    };

    $scope.retrieve = function(id) {
      UsersService.retrieve(id).then(function(response) {
        $scope.user = response.data;

      }, function(error) {
        registerError(error, 'retrieving all users');
      });
    };

    $scope.editFields = function() {
      $('#a').prop('disabled', false);
      $('#b').prop('disabled', false);
      $('#c').prop('disabled', false);
      $('#d').prop('disabled', false);
      $('#e').prop('disabled', false);
      $('#x').prop('hidden', false);
      $('#y').prop('hidden', true);
    };

    $scope.getLoggedUser = function() {
      return $cookieStore.get('userName');
    };

    (function() {
      $scope.loggedUserId = $cookies.get('userId');
      $scope.isLogged = $cookies.get('isLoggedIn');

      UsersService.retrieve($scope.loggedUserId).then(function(response) {
        $scope.loggedUser = response.data;

      }, function(error) {
        console.log("wrong user");
      });

      UsersService.retrieveAll().then(function(response) {
        $scope.users = response.data;
      }, function(error) {
        registerError(error, 'retrieving all users');
      });

    })();
  }
]);
