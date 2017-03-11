class ParkingsController < ApplicationController
  before_action :set_parking, only: [:show, :edit, :update, :destroy]

  def index
    @parkings = Parking.all
    @places = Place.all
    @places.map do |p|
      p.update(occupied: false) if !p.updated_at.today?
    end
  end

  def show
  end

  def new
    @parking = Parking.new
  end

  def edit
  end

  def create
    @parking = Parking.create(parking_params)
    redirect_to root_path
  end

  def update
    respond_to do |format|
      if @parking.update(parking_params)
        format.html { redirect_to @parking, notice: 'Parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking }
      else
        format.html { render :edit }
        format.json { render json: @parking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @parking.destroy
    respond_to do |format|
      format.html { redirect_to parkings_url, notice: 'Parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_parking
      @parking = Parking.find(params[:id])
    end

    def parking_params
      params.require(:parking).permit(:name, :schema)
    end
end
