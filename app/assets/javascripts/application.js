// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var Application = Application || {};

Application.Transition = function(){
	$('#scene').scrollTop(0);
	$('#scene').css('opacity', 0);
	$('#scene').animate({
		opacity: 1
    }, 250);
}

Application.ToggleObjDisplay = function(obj){ Application.SetObjDisplay(obj, (obj.css('display')=='none')); }
Application.SetObjDisplay = function(obj, isOn){
	if(obj != null){
		if(isOn){
			obj.css('display', 'block');
		}else{
			obj.css('display', 'none');
		}
	}
}

Application.GetBlocker = function(){ return $('#blocker'); }
Application.ToggleBlocker = function(){ Application.SetBlockerDisplay(Application.GetBlocker(), (obj.css('display')=='none')); }
Application.SetBlockerDisplay = function(isOn){
	var blocker = Application.GetBlocker();
	
	if(isOn){
		blocker.fadeIn('fast', function(){ Application.SetObjDisplay(blocker, true); });
	}else{
		blocker.fadeOut('fast', function(){ Application.SetObjDisplay(blocker, false); });
	}

}

Application.OnAjax = function(){
	Application.Transition();
	FB.XFBML.parse();
}

$(document).ajaxComplete(Application.OnAjax);