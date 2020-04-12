class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Category.all
    @booking = Booking.new
    @products = Product.all
  end
end
