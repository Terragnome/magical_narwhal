var postsIsReady = false;
function onReady(){
	if(postsIsReady) return;
	postsIsReady = true;

	//Create facebook comment section
	initFBComments();
	$('.comment_button').each(toggleFBComments);

	//Share button
	var shareButton = $('.share_button');
	if(shareButton != null) shareButton.click(toggleShare);
}

function initFBComments(){
	var d = document;
	var s = 'script';
	var id = 'facebook-jssdk';
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
 	js = d.createElement(s); js.id = id;
  	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=696404120390063";
  	fjs.parentNode.insertBefore(js, fjs);
}

function toggleFBComments(){
	$(this).click(function(){
		var commentSection = $(this).parent().parent().find('.fb-comments');

		if(commentSection != null){
			if( commentSection.css('display') == 'none' ){
				commentSection.css('display', 'block');
			}else{
				commentSection.css('display', 'none');
			}
		}
	});
}

function toggleShare(){
	alert('Share!');
}

$(onReady);
$(document).on('page:load', onReady);