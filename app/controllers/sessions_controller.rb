class SessionsController < ApplicationController

    def new 
    end 

    def create 
      binding.pry
        #@user = User.find_by(username: params[:username])
        #if @user && @user.authenticate(params[:password])
          #session[:user_id] = @user.id
          #redirect_to user_path 
        #else
          #flash[:errors] = "Invalid username/password. Please try again"
                #render 'new'

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
    

    def destroy 
        
      session[:user_id] = nil
      #session.delete
      redirect_to movies_path
    end 
  end 

