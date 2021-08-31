class DirectorsController < ApplicationController

    #GET /directors
    def index
        @directors = Director.all
        
        render 200, json: @directors
    end

    #GET /directors/:id
    def show
        @director = Director.find(params[:id])
        render 200, json: @director        
    end

    #POST /director
    def create
        @director = Director.new(director_params)
    
        if @director.save
            render 200, json: @director
        else
            render 422, json: @director.errors    
        end
    end

    #PUT /director

    def update
        @director = Director.find(params[:id])

        if @director.update(director_params)
            render 200, json: @director
        else
            render 422, json: @director.errors
        end
    end

    def destroy
        @director = Director.find(params[:id])
        
        if @director.destroy
            head 204
        else
            render 422, json: @director.errors
        end
    end

    protected
    def director_params
        params.require(:director).permit(:name, :bio, :country, :age, :is_writer)
    end

end
