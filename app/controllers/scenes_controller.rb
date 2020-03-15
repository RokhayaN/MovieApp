class ScenesController < ApplicationController 

  before_action :admin_actor, only: [:index, :new]
  before_action :admin_actor, only: [:index, :new]
  
  
      def index
        invalid_request	  
      end
  
  
      def new
        invalid_request
        @scene = Scene.new
        end
  
  
      def create
        @actor = Actor.find_by(id: params[:scene][:actor_id])
        if user_valid?
          @scene = Scene.new(scene_params)
          if @scene.save
            redirect_to actor_scenes_path(@scene.actor)
          else
            render :new
          end
        else
          redirect_to actors_path
        end
      end
  
  
   def destroy
        Actor.find_by(id: params[:id]).destroy
        redirect_to movies_path
      end
  
  private
        def admin_actor
          @actor ||= Actor.find_by(id: params[:actor_id])
        end 
        
        def user_valid?
          @actor.user_id && (@actor.user.id == current_user.id)
        end
  
  
        def invalid_request
          if @actor.nil? || !user_valid?
            redirect_to actors_path
          end
        end
  
  
        def authorized_actor
          redirect_to actors_path if !@actor
        end
  
  
        def scene_params
          params.require(:scene).permit(:location,:time,:acting, :movie_id, :actor_id)
        end
      end
  
  
  
  
  