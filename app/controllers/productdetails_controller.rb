class ProductdetailsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
  def index
  end
  
  def new
    @productdetail = Productdetail.new
  end
  
  def show
    @productdetail = Productdetail.find(params[:id])
  end


  def create
    @productdetail = product.productdetails.build(productdetail_params)
    if @productdetail.save
      flash[:success] = "productdetail created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private
  def productdetail_params
    params.require(:productdetail).permit(:id, :colorcode, :colorname, :sizecode, :sizename, :vprice, :wprice, :price, :stock, {:product_ids => []})
  end
end
