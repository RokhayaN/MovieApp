class ApplicationController < ActionController::Base 
  helper_method :current_user 
  

    def current_user
        @user = User.find_by(id: session[:user_id])
      end
    
      def require_user
        redirect_to '/login' unless current_user
       end
       
       def require_author
        redirect_to '/' unless current_user.author?
       end
end

