module SessionsHelper

#sets user_id on the session object to user.id, which is unique for each user
  def create_session(user)
    session[:user_id] = user.id
  end

# #5
  def destroy_session(user)
    session[:user_id] = nil
  end

# #6
  def current_user
    User.find_by(id: session[:user_id])
  end

end
