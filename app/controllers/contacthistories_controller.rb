class ContacthistoriesController < ApplicationController
  def index
    @contacthistories = Contacthistory.all
  end
  
  def new
    @contacthistory = Contacthistory.new
  end
  
  def create
    @contacthistory = Contacthistory.new(contacthistory_params)
    if @contacthistory.save
      flash[:success] = '登録できました'
      redirect_to @contacthistory
    else
      @contacthistories = Contacthistory.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
private
  def contacthistory_params
    params.require(:contacthistory).permit(:id, :order_id, :name, :kubun, :contactus, :answer, :remark, :tile)
  end
  
end
