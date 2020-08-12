class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(strong_params)
    @flat.save

    redirect_to flat_path(@flat)
  end

  def edit
  end

  def update
    @flat.update(strong_params)

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def strong_params
    params.require(:flat).permit(:name, :description, :address, :number_of_guests, :price_per_night, :picture_url)
  end
end
