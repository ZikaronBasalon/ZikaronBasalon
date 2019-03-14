//= require lib/utils
//= require config/constants
//= require directives/managerLink

app.controller('ManagerShowController', ['$scope','$uibModal', '$http', '$location', function($scope, $uibModal, $http, $location) {
    if (document.getElementById('locale').className === 'he') {
        $scope.current_country = { id: 97, printable_name: 'Israel' };
    }

    $scope.hosts = [];
    $scope.search = {
        host: { country_id: 97 },
        witness: {},
        reverseOrdering: false
    };

    $scope.query = {
        host: null
    };

    $scope.activeView = 'witnesses';
    $scope.formatBool = formatBool;
    $scope.formatDate = formatDate;
    $scope.formatDateTime = formatDateTime;
    $scope.formatWitnessType = formatWitnessType;
    $scope.formatConcept = formatConcept;
    $scope.witnessTypes = witnessTypes;
    $scope.pagination = {
        currentPage: 1
    };

    $scope.sortProp = 'created_at';

    $scope.success = false;
    $scope.loading = false;

    reset_unused_parameters();

    $scope.init = function(currentUser, hosts, witnesses, regions, totalHosts, totalWitnesses, currentPage) {
        $scope.currentUser = currentUser;
        $scope.hosts = hosts;
        $scope.witnesses = witnesses;
        $scope.regions = regions;
        $scope.totalHosts = totalHosts;
        $scope.totalWitnesses = totalWitnesses;


        $scope.$watch("search", function(newVal, oldVal) {
            if(newVal != oldVal) {
                filter(1);
            }
        }, true);

        $scope.$watch('query', _.throttle(function(oldVal, newVal) {
            if(newVal != oldVal) {
                filter(1);
            }
        }, 2000), true);
    };

    $scope.onSearchHostCountrySet = function($item) {
      $scope.search.host.country_id = $item.id;
    }

    $scope.onSearchHostCitySet = function($item) {
      $scope.search.host.city_id = $item.id;
    }

    $scope.onSearchWitnessCitySet = function($item) {
      $scope.search.witness.city_id = $item.id;
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

    $scope.getHostCountryLocation = function(query) {
      return $http.get('/cities/autocomplete_country', {
        params: { q: query }
      }).then(function(response){
        return response.data;
      });
    };


    $scope.editHost = function(host) {
        window.open('/hosts/' + host.id, '_blank');
    };

    $scope.editWitness = function(witness) {
        window.open('/witnesses/' + witness.id, '_blank');
    };

    $scope.pageChanged = function() {
        filter($scope.pagination.currentPage);
    };

    function reset_unused_parameters() {
        delete $scope.search.witness.available_day1;
        delete $scope.search.witness.available_day2;
        delete $scope.search.witness.available_day3;
        delete $scope.search.witness.available_day4;
        delete $scope.search.witness.available_day5;
        delete $scope.search.witness.available_day6;
        delete $scope.search.witness.available_day7;
        delete $scope.search.witness.available_day8;
        delete $scope.search.witness.available_day9;

        delete $scope.search.witness.external_assignment;
        delete $scope.search.witness.archived;
        delete $scope.search.witness.need_to_followup;
        delete $scope.search.has_host;
    }

    function filter(page) {
        $scope.loading = true;
        reset_unused_parameters();
        if (typeof $scope.search.available_day_search !== 'undefined' && $scope.search.available_day_search != null) {
            $scope.search.witness[$scope.search.available_day_search] = true;
        }

        if ($scope.search.w_has_host == true) {
            $scope.search.has_host = $scope.search.w_has_host;
        }
        else if ($scope.search.w_has_host == false) {
            $scope.search.has_host = $scope.search.w_has_host;
            $scope.search.witness.external_assignment = false;
            $scope.search.witness.archived = false;
            $scope.search.witness.need_to_followup = false;

        }
        else if ($scope.search.w_has_host == -1) {
            // when selecting external_assignment, all other options should be false
            $scope.search.witness.external_assignment = true;
        }
        else if ($scope.search.w_has_host == -2) {
            // when selecting archived, all other options should be false
            $scope.search.witness.archived = true;
        }
        else if ($scope.search.w_has_host == -3) {
            // when selecting need_to_followup, all other options should be false
            $scope.search.witness.need_to_followup = true;
        }

        var params = {
            filter: {
                host: getFilterKeys($scope.search.host),
                witness: getFilterKeys($scope.search.witness)
            },
            page: page,
            reverse_ordering: +$scope.search.reverseOrdering,
            host_query: $scope.query.host,
            witness_query: $scope.query.witness,
            host_sort: $scope.sortProp,
            witness_sort: $scope.witnessSortProp,
            has_manager: $scope.search.has_manager,
            has_host: $scope.search.has_host,
            has_survivor: $scope.search.has_survivor,
            is_red: $scope.search.is_red,
            is_org: $scope.search.is_org,
            event_language: $scope.search.event_language,
            in_future: $scope.search.in_future,
            has_invites: $scope.search.has_invites
        };

        $http.get('/managers/' + $scope.currentUser.meta.id + '.json' + '?' + $.param(params))
            .then(
                function(response) {
                    $scope.hosts = JSON.parse(response.data.hosts);
                    $scope.cities = JSON.parse(response.data.cities);
                    $scope.regions = JSON.parse(response.data.regions);
                    $scope.witnesses = JSON.parse(response.data.witnesses);
                    $scope.pagination.currentPage = response.data.page;
                    $scope.totalHosts = response.data.total_hosts;
                    $scope.totalWitnesses = response.data.total_witnesses;
                    $scope.loading = false;
                })
            .catch(
                function(e) {
                    $scope.loading = false;
                    alert(e.message);
                });
    }

    $scope.export_hosts = function() {
        var params = {
            filter: {
                host: getFilterKeys($scope.search.host)
            },
            host_query: $scope.query.host,
            host_sort: $scope.sortProp,
            has_manager: $scope.search.has_manager,
            has_host: $scope.search.has_host,
            has_survivor: $scope.search.has_survivor,
            is_red: $scope.search.is_red,
            is_org: $scope.search.is_org,
            event_language: $scope.search.event_language,
            in_future: $scope.search.in_future,
            has_invites: $scope.search.has_invites
        };

        window.open(
            '/managers/' + $scope.currentUser.meta.id + '/export_hosts' + '?' + $.param(params),
            '_blank' // <- This is what makes it open in a new window.
        );
    };

    $scope.export_witnesses = function() {
        var params = {
            filter: {
                witness: getFilterKeys($scope.search.witness)
            },
            witness_query: $scope.query.witness,
            witness_sort: $scope.witnessSortProp,
            has_manager: $scope.search.has_manager,
            has_host: $scope.search.has_host,
            event_language: $scope.search.event_language,
        };

        window.open(
            '/managers/' + $scope.currentUser.meta.id + '/export_witnesses' + '?' + $.param(params),
            '_blank' // <- This is what makes it open in a new window.
        );
    };

    $scope.export_guests = function() {
        window.open(
            '/managers/' + $scope.currentUser.meta.id + '/export_guests',
            '_blank' // <- This is what makes it open in a new window.
        );
    };

    function getFilterKeys(filterObj) {
        var filtered = {};
        _.mapKeys(filterObj, function(value, key) {
            if(!_.isNull(value) && value !== "") {
                filtered[key] = value;
            }
        });
        delete filtered.query;
        return filtered;
    }

    $scope.sort = function(arr) {
        //return _.sortBy(arr, $scope.sortProp).reverse();
    };

    $scope.isAccesible = function(host) {
        return host.floor === 0 || host.elevator;
    };

    $scope.onViewToggle = function(view) {
        $scope.activeView = view;
    };

    $scope.setSortProp = function(prop) {
        $scope.search.reverseOrdering = !$scope.search.reverseOrdering;
        $scope.sortProp = prop;
        filter(1);
    };

    $scope.setSortPropWitness = function(prop) {
        $scope.search.reverseOrdering = !$scope.search.reverseOrdering;
        $scope.witnessSortProp = prop;
        filter(1);
    };

    $scope.getManager = function(obj) {
        return obj.city && obj.city.managers ? obj.city.managers[0] : {};
    };

    $scope.deleteHost = function(host) {
        var confirmMessage = !!host.witness ? 'למארח יש ציוות. ' : '';
        confirmMessage += 'בטוח בטוח?';
        var res = confirm(confirmMessage);
        if (res) {
            $http.delete('/hosts/' + host.id + '.json').then(function(response) {
                if (response.data.success) {
                    $scope.showSuccessMessage();
                    $scope.success = true;
                    $scope.hosts = _.filter($scope.hosts, function(host) {
                        return host.id !== response.data.host.id;
                    });
                }
            });
        };
    };

    $scope.deleteWitness = function(witness) {
        var res = confirm("בטוח בטוח?");
        if (res) {
            $http.delete('/witnesses/' + witness.id + '.json').then(function(response) {
                if (response.data.success) {
                    $scope.showSuccessMessage();
                    $scope.witnesses = _.filter($scope.witnesses, function(witness) {
                        return witness.id !== response.data.witness.id;
                    });
                }
            });
        }
    };

    $scope.showSuccessMessage = function() {
        $scope.success = true;
        setTimeout(function() {
            $scope.success = false;
            $scope.$apply();
        }, 3000);
    };

    function activeFilter(filter) {
        return !_.isUndefined(filter) && !_.isNull(filter);
    }

    $scope.contactWitnessDue = function(host) {
        return host.has_witness && !host.contacted_witness &&
            ((new Date() - new Date(host.assignment_time)) / (1000*60*60*24)) > 2
    };
}]);
