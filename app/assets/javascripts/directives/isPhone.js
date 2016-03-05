app.directive('isPhone', function () {
  return {
    require: 'ngModel',
    link: function(scope, element, attributes, ngModel) {
      ngModel.$parsers.unshift(function(value) {
        if(value){
          // test and set the validity after update.
          var valid = !isNaN(value) && value.length >= 10;
          ngModel.$setValidity('isPhone', valid);
        }

        // if it's valid, return the value to the model,
        // otherwise return undefined.
        return valid ? value : undefined;
      });
    }
  };
});
