class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'products/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_date, :end_date)
  end
end
