class DeliverymethodsController < ApplicationController
  before_action :set_deliverymethod, only: [:show, :edit, :update, :destroy]
  
  def index
    @deliverymethods = Deliverymethod.all
  end
  
  def new
    @deliverymethod = Deliverymethod.new
  end
  
  def show
  end
  
  def create
    @deliverymethod = Deliverymethod.new(deliverymethod_params)
    if @deliverymethod.save
      flash[:success] = '登録出来ました'
      redirect_to @deliverymethod
    else
      @deliverymethods = Deliverymethods.all
      flash.now[:alert] = 'メッセージの保存に失敗しました。'
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    if @deliverymethod.update(deliverymethod_params)
      redirect_to deliverymethods_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @deliverymethod.destroy
    redirect_to deliverymethods_path, '削除しました'
  end
  
  
private
  def deliverymethod_params
    params.require(:deliverymethod).permit(:id, :name, :remark)
  end

  def set_deliverymethod
    @deliverymethod = Deliverymethod.find(params[:id])
  end
  
end
