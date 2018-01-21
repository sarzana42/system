class CustompatternsController < ApplicationController
  before_action :set_custompattern, only: [:show, :edit, :update, :destroy]
  
  def new
    @custompattern = Custompattern.new
    @order = Order.find(params[:order_id])
  end
  
  def create
    @custompattern = Custompattern.new(custompattern_params)
    @custompattern.product_id = params[:product_id]
    if @custompattern.save
      flash[:success] = "custompattern created!"
      redirect_to order_custompattern_path(params[:product_id])
    else
      @product = Product.find(params[:product_id])
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'new'
    end        
  end
  
private
  
  def custompattern_params
    params.require(:custompattern).permit(:product_id, :order_id, :custompatternimage)
  end

  def set_custompattern
    @custompattern = Custompattern.find(params[:id])
  end
  
end
