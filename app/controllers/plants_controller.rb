class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plants = Plant.all
    aloe = plants.find_by(id: params[:id])
    render json: aloe
  end

  def create
    plants = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plants, status: 201
  end

end
