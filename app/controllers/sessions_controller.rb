class SessionsController < ApplicationController

    def new 
      #binding.pry
    end 

    def create 
      
      if auth_hash = request.env['omniauth.auth']
        @user = User.find_or_create_by_omniauth(auth_hash)
        session[:user_id] = @user.id 
         redirect_to actors_path
      else
     # binding.pry
  
          @user = User.find_by(username: params[:username])
        if !@user
         @error = "Account not found. Please try again."
            render :new
        elsif !@user.authenticate(params[:password])
          @error = "Password incorrect. Please try again."
            render :new
        else
          log_in(@user)
            redirect_to movies_path  
        end 
      end
    end 

    def destroy 
        
      session[:user_id] = nil
      #session.delete
      redirect_to movies_path
    end 
  end 

