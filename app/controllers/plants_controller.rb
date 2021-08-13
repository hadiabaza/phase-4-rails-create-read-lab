class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants 
    end

    def show 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(create_params)
        render json: plant, status: 201
    end
    
    private

    def create_params
        params.permit(:name, :image, :price)
    end
end
