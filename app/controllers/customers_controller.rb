class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  
  def new
    @customer = Customer.new
  end
  
  def index
    @customers = Customer.all
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = '登録できました'
      redirect_to @customer
    else
      @customers = Customer.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
    
  def show
  end
  
  def edit
  end
  
  def update
    if @customer.update(customer_params)
      redirect_to customer_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
    
    
  
private

  def customer_params
    params.require(:customer).permit(:groupcus, :kubun_id, :name1, :name2, :kana1, :kana2, :zip, :address1, :address2, :address3, :tel1, :tel2, :fax, :email, :lineid, :skypeid, :danjo, :birth, :image, :remark, {:maildm_ids => []})
  end
  
  def set_customer
    @customer = Customer.find(params[:id])
  end
  
end
