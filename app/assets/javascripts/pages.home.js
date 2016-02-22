app.controller('HomePageController', ['$scope','$http', function($scope, $http) {
  $scope.hosts = [];
  $scope.search = {};
  $scope.currentPage = 1;

  $scope.init = function(hosts, cities, totalPages, page) {
    $scope.hosts = hosts;
    $scope.cities = cities;
    $scope.totalPages = totalPages;
    $scope.currentPage = page;
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

  $scope.filter = function() {
    $scope.getHosts();
  }

  $scope.paginate = function(n) {
    $scope.currentPage = n;
    $scope.getHosts(n);
  }

  $scope.getHosts = function(page) {
    $http.get('/pages/home.json', {
      params: {
        page: page,
        city_id: $scope.search.city_id
      }
    }).then(function(response) {
      $scope.cities = response.data.cities;
      $scope.hosts = response.data.hosts;
      $scope.totalPages = response.data.total_pages;
      $scope.currentPage = parseInt(response.data.page);
    });
  }

  $scope.requestInvite = function(host) {
    
  }

  $scope.range = function(min, max, step) {
    step = step || 1;
    var input = [];
    for (var i = min; i <= max; i += step) {
        input.push(i);
    }
    return input;
  };
}]);


// $(function() {
// 	// Change city
// 	$('#city_select').change(function(event) {
// 		id = $(this).val();
// 		$.ajax({
// 			url: '/pages/home.js',
// 			data: { city_id: id, locale: $('body').attr('class') },
// 			error: function(e) {
// 				console.log(e.message);
// 				alert('Error!');
// 			}
// 		});
// 	});

// 	registerEndlessScroll();
// 	registerRequestPopup();
// });

// // Reverse the pagination (hebrew)
// // var pages = document.getElementsByClassName("reversed")[0];
// // var i = pages.childNodes.length;
// // while (i--)
// //     pages.appendChild(pages.childNodes[i]);

// // Endelss scrolling
// function registerEndlessScroll() {
// 	$(window).scroll(function(){
//   	url = $('.pagination a[rel="next"]').attr('href');
//   	if(url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
//       $('.pagination').text('טוען מארחים נוספים...')
//       $.getScript(url);
//   	}
//   });
// } 	

// function registerRequestPopup() {
// 	// Open send reuqest popup
// 	$('.send').click(function(event) {
// 		$('#guest_host_id').val($(this).data('id'));
// 		$('#register').removeClass('hidden');
// 		$('#register').center();
// 		$('#mask').removeClass('hidden');
// 	});

// 	// Close send request popup
// 	$('.x').click(function(event) {
// 		$('#register').addClass('hidden');
// 		$('#mask').addClass('hidden');
// 	});
// }



