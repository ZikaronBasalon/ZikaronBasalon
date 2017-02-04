app.directive('isPhone', function () {
  return {
    require: 'ngModel',
    link: function(scope, element, attributes, ngModel) {
      ngModel.$parsers.unshift(function(value) {
        if(typeof value !== 'undefined'){
          // test and set the validity after update.
          //if empty, it's valid since the html required should be checking that it's not empty
          var valid = (!isNaN(value.replace('-','')) && value.length >= 9) || value.length == 0;
          ngModel.$setValidity('isPhone', valid);
        }

        // if it's valid, return the value to the model,
        // otherwise return undefined.
        return valid ? value : undefined;
      });
    }
  };
});
