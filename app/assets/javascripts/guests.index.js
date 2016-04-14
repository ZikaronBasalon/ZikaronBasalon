//= require lib/utils

app.controller('GuestIndexController', ['$scope','$http', function($scope, $http) {
  $scope.guests = [];
  $scope.success = false;
  $scope.pagination = {
    currentPage: 1
  }

  $scope.formatDateTime = formatDateTime;

  $scope.init = function(guests, totalGuests, page) {
    $scope.guests = guests;
    $scope.totalGuests = totalGuests;
  }

  $scope.deleteGuest = function(guest) {
    var res = confirm("בטוח בטוח?");
    if (res) {
      $http.delete('/guests/' + guest.id + '.json').then(function(response) {
        if (response.data.success) {
          $scope.showSuccessMessage();
          $scope.success = true;
          $scope.guests = _.filter($scope.guests, function(guest) {
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

  $scope.hostId = function(guest) {
    return (guest.invites[0] || {}).host_id
  }

  $scope.plusOnes = function(guest) {
    var pOnes = (guest.invites[0] || {}).plus_ones;
    return pOnes > 0 ? pOnes : null;
  }
}]);