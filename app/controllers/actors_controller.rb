class ActorsController < ApplicationController
   before_action :require_login, except: [:index]

    def index
       @actors = Actor.all
    end
        
    def new 
      @actor = Actor.new
    end 

    def create
      @actor = current_user.actors.build(actor_params)
      if @actor.save
        redirect_to actors_path
      else
        render :new
      end
    end

    def show
       @actor = Actor.find(params[:id])
       @movies = @actor.movies
    end

    def edit
      @actor = Actor.find(params[:id])
      redirect_to actors_path
    end 
  
    def update
      @actor = Actor.find(params[:id])
      @actor.update(actor_params)
      redirect_to actor_path(@actor)
    end
  
    def destroy
      Actor.find_by(id: params[:id]).destroy
      redirect_to actors_path
    end 
    private

  def actor_params
    params.require(:actor).permit(:first_name,:last_name,:biography)
  end
end
  

    