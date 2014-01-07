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
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//Initialize parallax
$(document).ready(function(){
	$('#scene').parallax({
	  calibrateX: true,
	  calibrateY: true,
	  invertX: true,
	  invertY: true,
	  scalarX: 3,
	  scalarY: 3,
	});
});

//Create facebook comment section
$(document).ready(function(d, s, id){
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=696404120390063";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

//Show/hide facebook comments section
$(document).ready(function(){
	var commentButton = $('#comment_button');
	if(commentButton != null){
		commentButton.click(function(){
			var commentSection = $('.fb-comments:first');
			if(commentSection != null){
				if( commentSection.css('display') == 'none' ){
					commentSection.css('display', 'block');
				}else{
					commentSection.css('display', 'none');
				}
			}
		});
	}
});