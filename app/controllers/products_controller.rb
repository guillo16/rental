class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]

  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def create
  end
end
