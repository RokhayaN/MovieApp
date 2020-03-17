class MoviesController < ApplicationController
   #before_action :require_login , except: [:index]

    def index 
       @movies = Movie.all
    end 
    
    def new
      @movie = Movie.new
    end 

    def create
      @movie = current_user.movies.build(movie_params)
      if @movie.save
        redirect_to movie_path(@movie)
      else
        render :new
      end
    end

    def show 
      params_movies
       @movie = Movie.find(params[:id])
       @actors = @movie.actors
    end
 
    def edit
      params_movies
      @movie = Movie.find(params[:id])
    end
  
    def update
      
      @movie = Movie.find(params[:id])
      @movie.update(movie_params)
      redirect_to movie_path(@movie)
    end
  
    def destroy
      Movie.find_by(id: params[:id]).destroy
      redirect_to movies_path
    end
end
#private 
#def params_movies
  # @movie = Movie.find(params[:id])
#end 
