track = ->
  if window._gaq?
    _gaq.push ['_trackPageview']
   else if window.pageTracker?
    pageTracker._trackPageview()

$(document).on 'page:change', -> track()
$(document).ajaxComplete -> track()