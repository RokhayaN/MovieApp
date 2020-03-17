class ApplicationController < ActionController::Base 
  helper_method :current_user 
  

  def authenticated_user
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
  
  def require_login
    unless authenticated_user
      flash[:errors] = "Please Log In to continue" 
      redirect_to controller: 'sessions', action: 'new'
    end
  end
    

  def log_in(user)
    session[:user_id] = user.id
  end
end


