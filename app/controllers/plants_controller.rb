class PlantsController < ApplicationController
    def index
        plant = Plant.all
        render json: plant
    end

    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
