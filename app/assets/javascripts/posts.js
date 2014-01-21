var Post = Post || {};

Post.OnReady = function(){
	//Create facebook comment section
	$('.comment_button').each(function(){ $(this).click(Post.OnCommentButton); });

	//Share button
	var shareButton = $('.share_button');
	if(shareButton != null) shareButton.click(Post.OnShareButton);
}

Post.OnCommentButton = function(){
	var commentSection = $(this).parent().parent().find('.fb-comments');
	Application.ToggleObjDisplay(commentSection);
}

Post.OnShareButton = function(){ Post.ShowShare($(this).parent().parent(), true); }
Post.ShowShare = function(postObj){ Post.SetShare(postObj, true); }
Post.HideShare = function(postObj){ Post.SetShare(postObj, false); }
Post.SetShare = function(postObj, isOn){
	var blocker = Application.GetBlocker();
	var shareSection = postObj.find('.share');

	if(isOn){
		Application.SetBlockerDisplay(blocker, true);
		blocker.one('click', function(){ Post.HideShare(postObj); });
		Application.SetObjDisplay(shareSection, true);
	}else{
		Application.SetBlockerDisplay(false);
		Application.SetObjDisplay(shareSection, false);
	}
}

$(Post.OnReady);