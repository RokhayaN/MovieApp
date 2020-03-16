class SessionsController < ApplicationController
    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to movies_path
        else
            @error = "Account not found! Please Try again"
            render :new
        end
    end 

    def destroy 
        
      session[:user_id] = nil
      redirect_to movies_path
        
    end 
end