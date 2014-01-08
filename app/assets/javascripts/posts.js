function onReady(){
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
}

$(onReady);