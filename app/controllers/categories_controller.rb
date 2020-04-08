class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @category = Category.find(params[:id])
    @products = Product.geocoded # returns flats with coordinates

    @markers = @products.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude
      }
    end
  end
end
