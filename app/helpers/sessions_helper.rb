module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def authenticate!
    redirect_to '/not_found' if !logged_in?
  end

  def authenticate_user(user_id, current_user)
    redirect_to '/not_found' if current_user == nil || user_id.to_i != current_user.id
  end

  def admin?(current_user)
      if current_user.admin == false
        redirect_to '/not_found'
      end
  end

end
