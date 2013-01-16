module ApplicationHelper
  def published_date_helper(post)
    return post.published_at.strftime('%B %e, %Y') if post.published_at?
    return ''
  end
end