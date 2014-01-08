function onReady(){
	//Create facebook comment section
	var d = document;
	var s = 'script';
	var id = 'facebook-jssdk';
	var js, fjs = d.getElementsByTagName(s)[0];
  	if (d.getElementById(id)) return;
  	js = d.createElement(s); js.id = id;
  	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=696404120390063";
  	fjs.parentNode.insertBefore(js, fjs);

	//Show/hide facebook comments section
	var commentButton = $('.comment_button:first');
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

	//Share button
	var shareButton = $('.share_button:first');
	if(shareButton != null){
		shareButton.click(function(){
			alert('Share!');
		});
	}
}

$(onReady);