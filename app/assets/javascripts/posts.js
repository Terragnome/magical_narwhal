var Post = Post || {};

Post.OnReady = function(){
	//Create facebook comment section
	$('.comment_button').each(Post.ToggleFBComments);

	//Share button
	var shareButton = $('.share_button');
	if(shareButton != null) shareButton.click(Post.ShowShare);
}

Post.ToggleFBComments = function(){
	$(this).click(function(){
		var commentSection = $(this).parent().parent().find('.fb-comments');
		Application.ToggleObjDisplay(commentSection);
	});
}

Post.ShowShare = function(){ Post.SetShare(true); }
Post.HideShare = function(){ Post.SetShare(false); console.log('here'); }
Post.SetShare = function(isOn){
	var blocker = Application.GetBlocker();
	var shareSection = $(this).parent().parent().find('.share');

	if(isOn){
		Application.SetBlockerDisplay(true);
		Application.SetObjDisplay(shareSection, true);
		blocker.one('click', Post.HideShare);
	}else{
		Application.SetBlockerDisplay(false);
		Application.SetObjDisplay(shareSection, false);
	}
}

$(Post.OnReady);