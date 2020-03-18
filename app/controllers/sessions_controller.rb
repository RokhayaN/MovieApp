class SessionsController < ApplicationController

    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_path 
        else
          flash[:errors] = "Invalid username/password. Please try again"
                render 'new'
        end
    end 

    def destroy 
        
      session[:user_id] = nil
      #session.delete
      redirect_to movies_path
    end 
  end 

