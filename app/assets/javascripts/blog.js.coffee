window.markNavForBlogPosts = ->
  jQuery('a.anchorLink')
    .parent().removeClass('active')
    .last().addClass('active')