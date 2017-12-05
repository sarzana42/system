class ProductdetailsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    before_action :set_productdetail, only: [:show, :edit, :update, :destroy]
    
  def index
    @product = Product.find(params[:product_id])
    @productdetails = @product.productdetails
  end
  
  def new
    @product = Product.find(params[:product_id])
    @productdetail = Productdetail.new
    
  end
  
  def show
  end


  def create
    @productdetail = Productdetail.new(productdetail_params)
    @productdetail.product_id = params[:product_id]
    if @productdetail.save
      flash[:success] = "productdetail created!"
      redirect_to product_productdetails_path(params[:product_id])
    else
      @product = Product.find(params[:product_id])
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
