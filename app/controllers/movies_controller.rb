class MoviesController < ApplicationController
   before_action :require_user , except: [:index]

    def index 
       @movies = Movie.all
    end 
    
    def show 
       @movie = Movie.find(params[:id])
       @actors = @movie.actors
    end
end
