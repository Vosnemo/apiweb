class ActorsController < ApplicationController

    # GET /actors
    def index
        @actors = Actor.all         
        render 200, json: @actors
    end 
    

    # GET /actor/:id
    def show
        @actor = Actor.find(params[:id])

        render 200, json: @actor
    end
    

    # POST /actor
    def create 
        @actor = Actor.new(actor_params)

        if @actor.save 
            render 201, json: @actor            
        else
            render 422, json: @actor.errors            
        end
    end    

    # PUT /actor/:id
    def update 
        @actor = Actor.find(params[:id])

        if @actor.update(actor_params)
            render 200, json: @actor
        else
            render 422, json: @actor.errors
        end
    end

    # DELETE /actor/:id
    def destroy
        @actor = Actor.find(params[:id])

        if @actor.destroy
            head 204
        
        else 
            render 422, json: @actor.errors
        end
        
    end

    protected 
    def actor_params
        params.require(:actor).permit(:name, :bio, :country, :age)
    end 
end
