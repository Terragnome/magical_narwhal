var Post = Post || {};

Post.OnReady = function(){
	//Create facebook comment section
	$('.comment_button').each(Post.ToggleFBComments);

	//Share button
	var shareButton = $('.share_button');
	if(shareButton != null) shareButton.click(Post.ToggleShare);
}

Post.ToggleFBComments = function(){
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

Post.ToggleShare = function(){
	alert('Share!');
}


$(Post.OnReady);