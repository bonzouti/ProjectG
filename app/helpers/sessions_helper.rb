module SessionsHelper
  flash = { success: "It worked!", danger: "It failed." }
  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?(user)
    if user == nil
    else
      current_user
    end
  end
end
