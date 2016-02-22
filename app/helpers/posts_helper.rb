module PostsHelper
  def post_date(post)
    post.created_at.strftime("%B %e, %Y")
  end
end
