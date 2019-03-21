//= require lib/utils
//= require directives/commentList

app.controller('WitnessAssignController', ['$scope', '$http', '$uibModal',
  function($scope, $http, $uibModal) {
  $scope.formatBool = formatBool;
  $scope.formatLanguage = formatLanguage;
  $scope.formatDate = formatDate;
  $scope.formatTime = formatTime;
	$scope.getAccesability = getAccesability;
	$scope.filter = {};
  $scope.success = false;

  $scope.init = function(witness, cityId, floor, elevator, eventLanguage, availableDay) {

    $scope.pagination = {
      currentPage: 1
    };

    $scope.witness = witness;
		$scope.comments = witness.comments;
    $scope.hosts = [];
    $scope.filter.city_id = cityId;
    $scope.filter.floor = floor;
    $scope.filter.elevator = elevator;
    $scope.filter.event_language = eventLanguage;
    $scope.filter.available_day = availableDay;

    $scope.$watch("filter.city_id", $scope.filterHosts, true);
    $scope.$watch("filter.floor", $scope.filterHosts, true);
    $scope.$watch("filter.elevator", $scope.filterHosts, true);
    $scope.$watch("filter.event_language", $scope.filterHosts, true);
    $scope.$watch("filter.available_day", $scope.filterHosts, true);


    $scope.$watch('filter.query', _.throttle(function(oldVal, newVal) {
      if(newVal != oldVal) {
        $scope.filterHosts();
      }
    }, 2000), true);

    // initial call when page loaded (to get initial host list)
    $scope.filterHosts();
  };

  $scope.pageChanged = function() {
    $scope.filterHosts();
  };

  $scope.onAssignCitySelect = function($item) {
    $scope.filter.city_id = $item.id;
  }

  // todo: move to service
  $scope.getCityLocation = function(query, country_id) {
    return $http.get('/cities/autocomplete_city', {
      params: {
        city: {
          country_id: country_id,
          q: query
        }
      }
    }).then(function(response){
      return response.data;
    });
  };

  $scope.filterHosts = function() {
  	var params = {};

  	if($scope.filter.city_id) {
  		params.city_id = $scope.filter.city_id;
    }

  	if($scope.filter.floor) {
  		params.floor = $scope.filter.floor;
    }

  	if($scope.filter.elevator) {
  		params.elevator = $scope.filter.elevator;
    }

  	if($scope.filter.event_language) {
  		params.event_language = $scope.filter.event_language;
  	}

  	if($scope.filter.available_day) {
  		params.available_day = $scope.filter.available_day;
  	}

    if($scope.filter.query) {
      params.query = $scope.filter.query;
    }

    params.page = $scope.pagination.currentPage;

    $http.get('/witnesses/' + $scope.witness.id + '/assign.json'+ '?' + $.param(params))
    .then(function(response) {
        $scope.hosts = JSON.parse(response.data.hosts);
        $scope.hosts_count = JSON.parse(response.data.hosts_count);
    });

  }

$scope.assignHost = function(host) {
  var modalInstance = $uibModal.open({
    templateUrl: 'assign-modal.html',
    controller: 'WitnessAssignModalController',
    resolve: {
      host: function () {
        return host;
      },
      witness: function () {
        return $scope.witness;
      }
    }
  });

  modalInstance.result.then(function () {
    $scope.success = true;
  });
}
}]);

app.controller('WitnessAssignModalController', ['$scope', '$http','$uibModalInstance', 'host', 'witness',
 function($scope, $http, $uibModalInstance, host, witness) {

  $scope.host = host;
  $scope.witness = witness;
  $scope.getAccesability = getAccesability;
  $scope.formatDate = formatDate;
  $scope.formatLanguage = formatLanguage;
  $scope.formatStairs = formatStairs;
  $scope.formatWitnessAvailabilityTime = formatWitnessAvailabilityTime;
  $scope.formatTime = formatTime;
  $scope.formatBool = formatBool;

  $scope.close = function () {
    $uibModalInstance.dismiss('close');
  };

  $scope.createAssignment = function() {
    $scope.error = false;

    $http.put('/witnesses/' + $scope.witness.id + '.json', {
      witness: {
        host_id: $scope.host.id
      }
    }).then(function(response) {
      if(response.status === 201 && response.data.host_id) {
        window.location = '/' + document.getElementById('locale').className + '/hosts/' + response.data.host_id;
      } else {
        $scope.error = true;
      }
    });
  }

}]);
