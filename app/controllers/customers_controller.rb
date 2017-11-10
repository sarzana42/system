class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = '登録できました'
      redirect_to @customer
    else
      render 'new'
    end
    
    def show
      @customer = Customer.find(params[:id])
    end
    
    
  end
  
  
private

  def customer_params
    params.require(:customer).permit(:groupcus, :kubun, :maildm, :name1, :name2, :kana1, :kana2, :zip, :address1, :address2, :address3, :tel1, :tel2, :fax, :email, :lineid, :skypeid, :danjo, :birth, :piccus, :remark)
  end
  
end
