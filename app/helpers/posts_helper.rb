module PostsHelper

  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
  end

  def user_authorized_for_posts_action?(post, action)
    if action == :delete
      authorized = current_user && (current_user == post.user || current_user.admin?)
    else
      authorized = current_user && (current_user == post.user || current_user.moderator? || current_user.admin?)
    end

    return authorized
  end
end
