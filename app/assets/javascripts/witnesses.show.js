//= require lib/utils
//= require config/constants
//= require directives/commentForm
//= require directives/commentList

app.controller('WitnessShowController', ['$scope', '$http', function($scope, $http) {
	$scope.formatDateTime = formatDateTime;
	$scope.formatDate = formatDate;
	$scope.formatTime = formatTime;
	$scope.getAccesability = getAccesability;
	$scope.formatStrangers = formatStrangers;
	$scope.formatBool = formatBool;
	$scope.witnessTypes = witnessTypes;
	$scope.formatWitnessType = formatWitnessType;
	$scope.formatLanguage = formatLanguage;

	$scope.init = function(witness) {
		$scope.witness = witness;
		$scope.comments = witness.comments;
	}

	$scope.save = function() {
		$scope.success = false;
		$http.put('/witnesses/' + $scope.witness.id + '.json', {
  		witness: {
				concept: $scope.witness.concept,
				witness_type: $scope.witness.witness_type,
				special_population: $scope.witness.special_population,
				seminar_required: $scope.witness.seminar_required,
				external_assignment: $scope.witness.external_assignment,
				archived: $scope.witness.archived,
				need_to_followup: $scope.witness.need_to_followup
			}
  	}).then(function success(response) {
  		$scope.success = true; 
  	})
	}

	$scope.commentCallback = function(response) {
		$scope.comments.push(response.data);
	}

	$scope.confirmExternalAssignment = function() {
		if ($scope.witness.external_assignment) {
			var answer = $scope.witness.external_assignment = confirm('בטוח?');
			if (answer) {
                $scope.save();
            }
		}
		// cancel assignment, save this immediately so that there wont be a match + external assignment
		else {
		    $scope.save();
        }
	}

	$scope.confirmArchive = function() {
		if ($scope.witness.archived) {
			var answer = $scope.witness.archived = confirm('כדי	לשמור על סדר, חובה להזין מדוע איש/אשת העדות לא מעוניין להשתתף השנה');
            if (answer) {
                $scope.save();
            }
		}
		else {
            $scope.save();
        }

	}

	$scope.confirmFollowup = function () {
        $scope.save();
    }
}]);