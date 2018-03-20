//= require lib/utils
//= require request-invite
//= require directives/datePicker

app.controller('HostsRegisterLinkController', ['$scope','$http', '$uibModal', function($scope, $http, $uibModal) {

    $scope.init = function(host, currentUser) {
        $scope.host = host;
        $scope.currentUser = currentUser;
        $scope.requestInvite();
    };

    $scope.requestInvite = function() {
        var modalInstance = $uibModal.open({
            templateUrl: 'request-invite.html',
            controller: 'RequestInviteController',
            resolve: {
                host: function () {
                    return $scope.host;
                },
                currentUser: function () {
                    return $scope.currentUser;
                }
            }
        });

        modalInstance.result.then(function () {
            window.history.pushState(null, null, '/pages/home');
            location.reload();
        }, function () {
            window.history.pushState(null, null, '/pages/home');
        });
    };

}]);

