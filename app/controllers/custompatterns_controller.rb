class CustompatternsController < ApplicationController
  before_action :set_custompattern, only: [:show, :edit, :update, :destroy]
  
  def new
    @custompattern = Custompattern.new
    @order = Order.find(params[:order_id])
    @custompattern.orderdetails.build
    @custompattern.orderdetails.build
  end
  
  def show
  end
  
  def create
    #binding.pry
    @custompattern = Custompattern.new(custompattern_params)
    @custompattern.order_id = params[:order_id]
    if @custompattern.save
      flash[:success] = "custompattern created!"
      redirect_to order_path(params[:order_id])
    else
      @order = Order.find(params[:order_id])
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'new'
    end        
  end
  
  def edit
    @order = @custompattern.order
  end
  
  def update
    if @custompattern.update(custompattern_params)
      redirect_to order_path(@custompattern.order), notice: '編集しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @custompattern.destroy
    redirect_to order_path(@custompattern.order), notice: '削除しました'
  end
  
private
  
  def custompattern_params
    params.require(:custompattern).permit(:product_id, :order_id, :custompatternimage, orderdetails_attributes: [:id, :productdetail_id, :orderamount])
  end

  def set_custompattern
    @custompattern = Custompattern.find(params[:id])
  end
  
end
