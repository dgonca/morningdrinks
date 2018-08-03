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
    redirect_to '/404' if !logged_in?
  end

  def authenticate_user(user_id)!
    redirect_to '/404' if user_id != @current_user.id
  end
end
