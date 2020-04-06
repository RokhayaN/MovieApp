class ScenesController < ApplicationController 
  before_action :get_scene, except: [:index]

  def index
    
    @scenes =Scene.all 
    #Scene.supporting_scene
  end

  def new
    @scene =Scene.new
  end

  def create
    
      @scene =Scene.new(scene_params)
      if @scene.save
        #render :new
        redirect_to actors_path
      else 
        render :new
      end
  end

  def edit
  end

  def update
    @scene.update(scene_params)
    if @scene.save
      redirect_to actor_path
    else
      render :edit
    end
  end

  def destroy
    @scene.destroy
    redirect_to movies_path
  end

  private

    def get_scene
      @scene = Scene.find_by(id: params[:id])
      # if @actor is nil, execute...if not leave it.
    end

    def scene_params
      params.require(:scene).permit(:acting, :time, :location, :movie_id, :actor_id)
    end
  end
