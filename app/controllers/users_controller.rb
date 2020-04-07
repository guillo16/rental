class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @products = Product.all
  end
end
