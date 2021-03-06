class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new

    # copy_id があったときだけ、やる処理
    if not params[:copy_id].nil?
      copy_product = Product.find(params[:copy_id])
      @product.name = copy_product.name
      
      @product.maker = copy_product.maker
      @product.remark = copy_product.remark
    end
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
    @productdetails = @product.productdetails
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
    params.require(:product).permit(:maker_id, :productid, :name, :productinfo, :productpic, :remark)
  end

 def set_product
   @product = Product.find(params[:id])
 end
  
end
