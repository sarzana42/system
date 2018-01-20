class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  
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
  
  def update
    if @order.update(order_params)
      redirect_to orders_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
private
  def order_params
    params.require(:order).permit(:id, :ordername, :orderid, :customer_id, :firstorderdate, :startdate, :finishdate, :deliverymethod_id, :collectionmethod_id, :collectiondate, :deliverydate, :image, :remark)
  end
  
  def set_order
    @order = Order.find(params[:id])
  end
  
end
