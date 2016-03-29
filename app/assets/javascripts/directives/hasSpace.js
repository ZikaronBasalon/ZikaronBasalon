app.directive('hasSpace', function () {
  return {
    require: 'ngModel',
    link: function(scope, element, attributes, ngModel) {
      ngModel.$parsers.unshift(function(value) {
        if(value){
          // test and set the validity after update.
          var valid = value.includes(' ');
          ngModel.$setValidity('hasSpace', valid);
        }

        // if it's valid, return the value to the model,
        // otherwise return undefined.
        return valid ? value : undefined;
      });
    }
  };
});
