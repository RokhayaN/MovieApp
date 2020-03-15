class ScenesController < ApplicationController 

  def index
    admin_actor
  end 

  def new
    admin_actor
    redirect_to actors_path if !@actor
    @scene = Scene.new
  end

  def create
    @actor = Actor.find_by(id: params[:scene][:actor_id])
    @scene = Scene.new(scene_params)
    if @scene.save
      redirect_to actor_scenes_path(@scene.actor)
    else
      render :new
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
   
    def scene_params
      params.require(:scene).permit(:time, :location, :movie_id, :actor_id)
    end

  end
