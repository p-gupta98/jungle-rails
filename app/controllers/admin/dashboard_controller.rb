class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV["PASSWORD"]


  def show
    @products = Product.count
    @category = Category.count
  end
end
