class ScenesController < ApplicationController 

    def index
        get_actor&scenes
    end
    
      def new
        get_actor&scenes
        redirect_to actors_path if !@actor
        @scene = Scene.new
      end
    
      def create
        @actor = Actor.find_by(id: params[:scene][:actor_id])
        @scene = Scene.new(scene_params)
        if @role.save
          redirect_to actor_scenes_path(@scene.actor)
        else
          render :new
        end
    
      end
    
      private
        def get_actor&scenes
          @actor ||= Actor.find_by(id: params[:actor_id])
          
        end
    
        def scene_params
          params.require(:scene).permit(:time, :location, :movie_id, :actor_id)
        end
    
      end
