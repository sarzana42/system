class OrdersController < ApplicationController
  def index
    @orders = Order.all
    
  end
  
  def new
    @order = Order.new
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = '登録できました'
      redirect_to @order
    else
      @orders = Order.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
  def edit
    @order = Order.find(params[:id])
  end
  
private
  def order_params
    params.require(:order).permit(:id, :customer_id, :firstorderdate, :startdate, :finishdate, :deliverymethod_id, :collectionmethod_id, :collectiondate, :deliverydate, :image, :remark)
  end
  
  def set_productdetail
    @order = Order.find(params[:id])
  end
  
end
