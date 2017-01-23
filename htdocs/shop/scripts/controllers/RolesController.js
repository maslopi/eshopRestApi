app.controller('RolesController', ['$scope', 'RolesService', function ($scope, RolesService) {
	'use strict';

	$scope.roles = [];

	var registerError = function (error, message) {
		$scope.error = {
			code: error.status,
			message: error.statusText,
			when: message
		};
	};

	$scope.create = function (role) {
		RolesService.create(role).then(function (response) {
			$scope.role = {};
			$scope.retrieveAll();
			$('input[type=text]').filter(':first').focus();

		}, function (error) {
			registerError(error, 'creating role');
		});
	};

	$scope.update = function (role) {
		RolesService.update(role).then(function (response) {
			$scope.retrieveAll();

		}, function (error) {
			registerError(error, 'updating role');
		});
	};

	$scope.edit = function (role) {
		if(role.editing) {
			$scope.update({
				id: role.id,
				name: role.name
			});
		}
		role.editing = !role.editing;
	};

	$scope.delete = function (id) {
		RolesService.delete(id).then(function (response) {
			$scope.retrieveAll();

		}, function (error) {
			registerError(error, 'deleting role');
		});
	};

	$scope.retrieveAll = function () {
		RolesService.retrieveAll().then(function (response) {
			$scope.roles = response.data;

		}, function (error) {
			registerError(error, 'retrieving all roles');
		});
	};

	(function () {
		RolesService.retrieveAll().then(function (response) {
			$scope.roles = response.data;

		}, function (error) {
			registerError(error, 'fetching roles');
		});
	})();
}]);
