class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = '登録できました'
      redirect_to @product
    else
      @products = Product.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to product_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @product.destroy
    redirect_to products_path, notice: '削除しました'
  end
  
private

  def product_params
    params.require(:product).permit(:maker, :productid, :name, :productinfo, :productpic, :remark)
  end

 def set_product
   @product = Product.find(params[:id])
 end
  
end
