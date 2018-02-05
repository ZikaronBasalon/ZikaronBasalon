// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require external/jquery-1.12.1.min.js
//= require external/jquery-ui.js
//= require external/angular.min.js
//= require external/angular-sanitize.min.js
//= require external/lodash.min.js
//= require external/ui-bootstrap.min.js
//= require external/ui-bootstrap-tpls.min.js
//= require external/angular-date-picker.js
//= require jquery_ujs
// require jquery.ui.autocomplete
// require jquery.ui.datepicker
// require angular/angular
// require_tree .
// require angular-bootstrap/ui-bootstrap.min.js
// require angular-bootstrap/ui-bootstrap-tpls.min.js
//= require spin.min.js
//= require angular-spinner.min
//= require ui-select
//= require module
//= require_self

$(function() {
	$("form").on("keypress", function (e) {
	    if (e.keyCode == 13) {
	        return false;
	    }
	});

    window.scrollTo(0,10);
    window.scrollTo(0,0);
})

jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                                                $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                                                $(window).scrollLeft()) + "px");
    return this;
}