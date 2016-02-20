app.controller('ManagerShowController', ['$scope', function($scope) {
  $scope.hosts = [];
  $scope.search = {};

  $scope.init = function(hosts) {
    $scope.hosts = hosts;
  }

  $scope.formatBool = function(value) {
    return value ? 'כן' : 'לא';
  }

  $scope.formatDate = function(date) {
    var date = new Date(date);
    var day = date.getDate();
    var month= date.getMonth() + 1;
    var year = date.getFullYear();

    return day + '.' + month + '.' + year;
  }

  $scope.editHost = function(host) {
    window.open('/hosts/' + host.id + '/edit', '_blank');
  }

  $scope.filterHosts = function(hosts) {
    return _.filter(hosts, function(host) {

      if(activeFilter($scope.search.survivor_needed)) {
        return $scope.search.survivor_needed === host.survivor_needed;
      }

      if(activeFilter($scope.search.strangers)) {
        return $scope.search.strangers === host.strangers;
      }

      if (!$scope.search.query) { return true }


      
      if (_.includes(host.user.email, $scope.search.query)) {
        return true;
      }

      if (_.includes(host.user.full_name, $scope.search.query)) {
        return true;
      }

      if (_.includes(host.address, $scope.search.query)) {
        return true;
      }

      if (_.includes(host.phone, $scope.search.query)) {
        return true;
      }

      return false;
    });
  }

  function activeFilter(filter) {
    return !_.isUndefined(filter) && !_.isNull(filter);
  }
}]);

