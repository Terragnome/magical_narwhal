var Post = Post || {};

Post.Init = function(){
	$('.comment_button').each(function(){ $(this).click(Post.OnCommentButton); });
	$('.share_button').each(function(){ $(this).click(Post.OnShareButton); });
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
	Application.SetObjDisplay(blocker, isOn);

	var share = $('#share');
	if(share != null)
	{
		if(isOn){
			share.css('left', ($(document).width()-share.outerWidth())/2+"px");
			share.css('top', ($(document).height()-share.outerHeight())/2+"px");
			share.css('display', 'auto');
			share.appendTo('#popups');

			blocker.one('click', function(){ Post.HideShare(postObj); });
		}else{
			share.appendTo(postObj.find('.share'));
		}
	}
}