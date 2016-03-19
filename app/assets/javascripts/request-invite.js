//= require guests.new
//= require guests.login
//= require lib/utils

app.controller('RequestInviteController', ['$scope', '$http', '$uibModalInstance', 'host', 'currentUser',
	function($scope, $http, $uibModalInstance, host, currentUser) {
	$scope.view = 'register';
	$scope.host = host;
	$scope.currentUser = currentUser;
	$scope.invite = {
		plusOnes: "0"
	};

	$scope.formatFirstName = formatFirstName;
	$scope.getAccesability = getAccesability;
	$scope.formatDate = formatDate;
	$scope.formatLanguage = formatLanguage;

	if (!$scope.currentUser)  {
		$scope.view = 'register';
	} else {
		if ($scope.currentUser.meta.invites && $scope.currentUser.meta.invites.length > 0) {
			$scope.view = 'error';
		} else {
			$scope.view = 'request';
		}
	}

	$scope.toggleView = function(view) {
		$scope.view = view;
	}

	$scope.close = function () {
    $uibModalInstance.dismiss('close');
  };

  $scope.sendRequest = function() {
  	$http.post('/invites', {
  		invite: {
  			host_id: $scope.host.id,
  			plus_ones: $scope.invite.plusOnes
  		}
  	}).then(function(response) {
  		if(response.data.error) {
  		} else {
  			window.history.pushState(null, null, '/');
  			$scope.view = 'success';
  		}
  	});
  }

  $scope.fbShare = function () {
  	FB.ui({
		  method: 'share',
		  href: 'http://www.zikaronbasalon.com/'
		}, function(response){

		});
  };

  $scope.toProfile = function () {
  	window.location = '/guests/' + $scope.currentUser.meta.id;
  }
}]);