//= require guests.new
//= require guests.login
//= require lib/utils

app.controller('RequestInviteController', ['$scope', '$http', '$uibModalInstance', 'host', 
	function($scope, $http, $uibModalInstance, host) {
	$scope.view = 'success';
	$scope.host = host;
	$scope.plusOnes = "0";

	$scope.formatFirstName = formatFirstName;
	$scope.getAccesability = getAccesability;
	$scope.formatDate = formatDate;
	$scope.formatLanguage = formatLanguage;

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
  			plus_ones: $scope.plusOnes
  		}
  	}).then(function(response) {
  		if(response.data.error) {

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
}]);