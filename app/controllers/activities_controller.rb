class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
    end

    def show
        @activity = Activity.find(params[:id])
    end

    def new
    end

    def create 
    end

    def edit
    end

    def update 
    end

    def destroy
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :difficulty)
    end
end
