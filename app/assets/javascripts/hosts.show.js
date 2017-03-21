//= require lib/utils
//= require directives/commentForm
//= require directives/commentList

app.controller('HostShowController', ['$scope', '$http', function($scope, $http) {
	$scope.formatDateTime = formatDateTime;
	$scope.formatDate = formatDate;
	$scope.formatTime = formatTime;
	$scope.getAccesability = getAccesability;
	$scope.formatStrangers = formatStrangers;
	$scope.formatBool = formatBool;

	$scope.init = function(host) {
		$scope.host = host;
		$scope.comments = host.comments;

		if(host.invites && host.invites.length > 0) {
			initInvites(host.invites);
		}

		//as long as the host didn't finish filling out his details, take him to edit page
		if ($scope.host.active == false) {
			if (confirm("some details are missing. press ok to fill them in")) {
				window.location = '/' + document.getElementById('locale').className + '/hosts/' + $scope.host.id + '/edit';
			}
		}
	}

	$scope.deactivateHost = function() {
		var confirmed=confirm("בטוח בטוח?");
		if (!confirmed) return;
		$scope.success = false;
		$http.put('/hosts/' + $scope.host.id + '.json', {
  		deactivate: true
  	}).then(function success(response) {
  		$scope.success = true;
  		window.location.reload();
  	})
	}

	$scope.save = function() {
		$scope.success = false;
		$http.put('/hosts/' + $scope.host.id + '.json', {
  		host: {
				concept: $scope.host.concept,
				contacted: $scope.host.contacted,
				preparation_evening: $scope.host.preparation_evening,
				contacted_witness: $scope.host.contacted_witness,
				strangers: $scope.host.strangers,
				max_guests: $scope.host.max_guests
			}
  	}).then(function success(response) {
  		$scope.success = true; 
  	})
	}

	$scope.commentCallback = function(response) {
		$scope.comments.push(response.data);
	}

	$scope.updateInvite = function(invite, confirmedStatus) {
		var res = confirmedStatus ? true : confirm("האם אתה בטוח שאתה רוצה לבטל את בקשת ההתארחות?");
		if (res) {
			$http.put('/invites/' + invite.id + '.json', {
				invite: {
					confirmed: confirmedStatus
				}
	  	}).then(function success(response) {
	  		initInvites(response.data);
	  	})
		}
	}

	$scope.closeEvening = function() {
		$scope.host.strangers = false;
		$scope.save();
	}

	$scope.fbShare = function () {
		var base = window.location.origin;
		var link = base + '/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + $scope.host.id;

		console.log(link);

		FB.ui({
		  method: 'share',
		  href: link
		}, function(response){

		});
	};	

	/*
	$scope.fbShare = function () {
		var base = window.location.origin;
		var link = encodeURIComponent(base + '/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + $scope.host.id);
		window.open(
		  'https://www.facebook.com/dialog/share?app_id=723889947773479&display=popup&href=' + link,
		  '_blank' // <- This is what makes it open in a new window.
		);
  	};
	*/
	
	function initInvites(invites) {
		var invites = _.groupBy(invites, 'confirmed');
		$scope.pendingInvites = invites[false];
		$scope.confirmedInvites = invites[true];
	}
}]);