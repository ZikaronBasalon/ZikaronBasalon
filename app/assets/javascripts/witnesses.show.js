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
			$scope.witness.external_assignment = confirm('בטוח?')
		}
	}

	$scope.confirmArchive = function() {
		if ($scope.witness.archived) {
			$scope.witness.archived = confirm('כדי	לשמור על סדר, חובה להזין מדוע איש/אשת העדות לא מעוניין להשתתף השנה');
		}
	}
}]);