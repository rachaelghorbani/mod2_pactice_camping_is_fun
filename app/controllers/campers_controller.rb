class CampersController < ApplicationController
    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
        @signup = @camper.signups.build
    end

    def new
        @camper = Camper.new
    end

    def create 
        @camper = Camper.create(camper_params)
        if @camper.valid?
            redirect_to camper_path(@camper)
        else
            render :new
        end
    end

    def edit
        @camper = Camper.find(params[:id])
    end

    def update 
        @camper = Camper.find(params[:id])
        if @camper.update(camper_params)
            redirect_to camper_path(@camper)
        else
            render :edit
        end
    end

    def destroy
        Camper.find(params[:id]).destroy
        redirect_to campers_path
    end

    private

    def camper_params
        params.require(:camper).permit(:name, :age)
    end
end
