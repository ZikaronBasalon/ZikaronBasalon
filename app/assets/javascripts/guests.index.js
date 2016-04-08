app.controller('GuestIndexController', ['$scope','$http', function($scope, $http) {
  $scope.guests = [];
  $scope.success = false;
  $scope.pagination = {
    currentPage: 1
  }

  $scope.init = function(guests, totalGuests, page) {
    $scope.guests = guests;
    $scope.totalGuests = totalGuests;
  }

  $scope.deteleGuest = function(guest) {
    var res = confirm("בטוח בטוח?");
    if (res) {
      $http.delete('/guests/' + guest.id + '.json').then(function(response) {
        if (response.data.success) {
          $scope.showSuccessMessage();
          $scope.success = true;
          $scope.hosts = _.filter($scope.guests, function(guest) {
            return guest.id !== response.data.guest.id;
          });
        }
      })
    }
  }

  $scope.showSuccessMessage = function() {
    $scope.success = true;
    setTimeout(function() {
      $scope.success = false;
      $scope.$apply();
    }, 3000);
  }

  $scope.pageChanged = function() {
  	$http.get('/guests.json?page=' +$scope.pagination.currentPage, { page: $scope.pagination.currentPage })
    .then(function(response) {
      $scope.guests = JSON.parse(response.data.guests);
      $scope.pagination.currentPage = response.data.page;
      $scope.totalGuests = response.data.total_guests;
    });
  }
}]);