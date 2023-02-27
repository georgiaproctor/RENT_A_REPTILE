class ReptilesController < ApplicationController
  def index
    @reptiles = Reptile.all
  end

  def new
    @reptile = Reptile.new
  end

  def create
    @reptile = Reptile.new(reptile_params)
    if @reptile.save
      redirect_to reptile_path(@reptile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reptile_params
    params.require(:reptile).permit(:name, :description, :species, :daily_price, :user_id)
  end
end
