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
    if (
      !host.active ||
      !host.received_registration_mail
    ) {
      window.location = '/' + document.getElementById('locale').className + '/hosts/' + $scope.host.id + '/edit';
    }
	}


    $scope.copyRegisterLink = function() {
        var el = document.getElementById("register-link-input");
        if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
            var editable = el.contentEditable;
            var readOnly = el.readOnly;
            el.contentEditable = true;
            el.readOnly = false;
            var range = document.createRange();
            range.selectNodeContents(el);
            var sel = window.getSelection();
            sel.removeAllRanges();
            sel.addRange(range);
            el.setSelectionRange(0, 999999);
            el.contentEditable = editable;
            el.readOnly = readOnly;
        }
        else {
            // Solution for android and browser, selects the input and focuses on it so that content can be copied
            el.focus();
            el.select();
        }

        document.execCommand('copy');

        /* Alert the copied text */
        alert("Copied the text: " + el.value);
    };

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
		var locale = document.getElementById('locale').className;
		var question = locale === 'he' ?  'האם אתה בטוח?' : 'Are you sure?';
		if (confirm(question)) {
			$scope.host.strangers = false;
			$scope.save();
		}
	}

	// $scope.fbShare = function () {
	// 	var base = window.location.origin;
	// 	var link = base + '/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + $scope.host.id;

	// 	console.log(link);

	// 	FB.ui({
	// 	  method: 'share',
	// 	  href: link
	// 	}, function(response){

	// 	});
	// };


	// $scope.fbShare = function () {
	// 	var base = window.location.origin;
	// 	var link = encodeURIComponent(base + '/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + $scope.host.id);
	// 	window.open(
	// 	  'https://www.facebook.com/dialog/share?app_id=1425545090852355&display=popup&href=' + link,
	// 	  '_blank' // <- This is what makes it open in a new window.
	// 	);
 //  	};


	  $scope.fbShare = function () {
  	FB.ui({
		  method: 'share',
		  href: 'http://zikaronbasalon.herokuapp.com/' + document.getElementById('locale').className + '/pages/home/'  + '?invite=' + host.id
		}, function(response){
		});
  };

	function initInvites(invites) {
		var invites = _.groupBy(invites, 'confirmed');
		$scope.pendingInvites = invites[false];
		$scope.confirmedInvites = invites[true];
	}
}]);
