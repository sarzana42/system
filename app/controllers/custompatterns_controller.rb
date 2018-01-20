class CustompatternsController < ApplicationController
  def new
    @custompattern = Custompattern.new
    @order = Order.find(params[:order_id])
  end
  
  def create
  end
  
end
