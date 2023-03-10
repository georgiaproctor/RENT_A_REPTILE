class ReptilesController < ApplicationController
  def index
    @reptiles = Reptile.all
  end

  def new
    @reptile = Reptile.new
  end

  def show
    @reptile = Reptile.find(params[:id])
  end

  def create
    @reptile = Reptile.new(reptile_params)
    @reptile.user = current_user
    if @reptile.save
      redirect_to reptiles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reptile = Reptile.find(params[:id])
    @reptile.destroy
    redirect_to reptiles_path
  end

  private

  def reptile_params
    params.require(:reptile).permit(:name, :description, :species, :daily_price, :photo)
  end
end
