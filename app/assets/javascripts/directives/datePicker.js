app.directive("datepicker", function () {
  return {
    restrict: "A",
    require: "ngModel",
    link: function (scope, elem, attrs, ngModelCtrl) {
      var updateModel = function (dateText) {
        scope.$apply(function () {
          ngModelCtrl.$setViewValue(dateText);
        });
      };
      var options = {
        dateFormat: "dd/mm/yy",
        isRTL: true,
        onSelect: function (dateText) {
          updateModel(dateText);
        },
        minDate: new Date()
      };
      elem.datepicker(options);
    }
  }
});