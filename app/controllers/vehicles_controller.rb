class VehiclesController < ApplicationController
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to vehicle_path(@vehicle), notice: 'Vehicle was successfully created.' }
        format.json { render json: @vehicle, status: :created, location: @vehicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def new

  end
end
