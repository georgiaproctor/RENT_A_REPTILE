class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @reptile = Reptile.find(params[:reptile_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.reptile = Reptile.find(params[:reptile_id])
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(@booking.user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :reptile_id)
  end
end
