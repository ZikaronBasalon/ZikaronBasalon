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

	$scope.getAccesability = getAccesability;
	$scope.formatDate = formatDate;
	$scope.formatLanguage = formatLanguage;
	$scope.formatTime = formatTime;
	$scope.formatAddressDisplay = formatAddressDisplay;

	if (!$scope.currentUser)  {
		$scope.view = 'register';
	} else {
		if (($scope.currentUser && $scope.currentUser.meta.invites && $scope.currentUser.meta.invites.length > 0) ||
				($scope.currentUser && $scope.currentUser.meta_type !== 'Guest')) {
			$scope.view = 'error';
		} else {
			$scope.view = 'request';
		}
	}

	$scope.toggleView = function(view) {
		$scope.view = view;
	}

	$scope.close = function (url) {
		if (url) {
			window.location = url;
		} else {
			$uibModalInstance.dismiss('cancel');
		}
  };

  $scope.sendRequest = function() {
  	$http.post('/invites', {
  		invite: {
  			host_id: $scope.host.id,
  			plus_ones: $scope.invite.plusOnes
  		},
  		locale: document.getElementById('locale').className
  	}).then(function(response) {
  		if(response.data.error) {
  			console.log(response.data);
  		} else {
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
  	window.location = '/' + document.getElementById('locale').className + '/guests/' + $scope.currentUser.meta.id;
  }
}]);