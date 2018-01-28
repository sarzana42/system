class OutsourcingsController < ApplicationController
  before_action :set_outsourcing, only: [:show, :edit, :update, :destroy]
  
  def index
    @outsourcings = Outsourcing.all
    @markmethods = Markmethod.all
  end
  
  def new
    @outsourcing = Outsourcing.new
  end
  
  def show
  end
  
  def create
    @outsourcing = Outsourcing.new(outsourcing_params)
    if @outsourcing.save
      flash[:success] = '登録できました'
      redirect_to @outsourcing
    else
      @outsourcings = Outsourcing.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
  def edit
  end
  
  
private

  def outsourcing_params
    params.require(:outsourcing).permit(:id, :name, :furigana, :zip, :prefecture_id, :address1, :address2, :inchargename, :inchargephone, :inchargemail, :tel, :fax, :compayname)
  end

  def set_outsourcing
    @outsourcing = Outsourcing.find(params[:id]) 
  end

end
