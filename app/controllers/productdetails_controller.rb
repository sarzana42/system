class ProductdetailsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    before_action :set_productdetail, only: [:show, :edit, :update, :destroy]
    
  def index
    @productdetails = Productdetail.all
  end
  
  def new
    @productdetail = Productdetail.new
    
  end
  
  def show
  end


  def create
    @productdetail = Productdetail.new(productdetail_params)
    if @productdetail.save
      flash[:success] = "productdetail created!"
      redirect_to @productdetail
    else
      @productdetails = Productdetail.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @productdetail.update(productdetail_params)
      redirect_to productdetail_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  

  
  
  private
  def productdetail_params
    params.require(:productdetail).permit(:id, :product_id, :colorcode, :colorname, :sizecode, :sizename, :vprice, :wprice, :price, :stock)
  end
  
  def set_productdetail
    @productdetail = Productdetail.find(params[:id])
  end
  
  
end
