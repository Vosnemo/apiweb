class MoviesController < ApplicationController
    
    #GET /movies
    def index
        @movies = Movie.all
        render 200, json: @movies
    end


    def show
        @movie = Movie.find(params[:id])
        render 200, json: @movie
    end

    #POST /movies
    def create
        @movie = Movie.new(movie_params)

        if @movie.save
            render 201, json: @movie 
        else
            render 401, json: @movie.errors
        end
    end

    #PUT /movies/:id
    def update
        @movie = Movie.find(params[:id])
        
        if @movie.update(movie_params)
            render 200, json: @movie
        else
            render 422, json: @movie.errors
        end
    end

    #DELETE /movies/:id
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        head 204
    end

    protected 
    def movie_params
        params.require(:movie).permit(:name, :synopsis, :genre, :classification, :score, :duration, :year)
    end
end
