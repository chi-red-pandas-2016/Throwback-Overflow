
helpers do
  def current_user
    if user = User.find_by_id(session[:user_id])
      user
    else
      nil
    end
  end

  def logged_in?
    current_user != nil
  end
end
