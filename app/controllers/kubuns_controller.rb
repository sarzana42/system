class KubunsController < ApplicationController
  before_action :set_kubun, only: [:show, :edit, :update, :destroy]
  
  def index
    @kubuns = Kubun.all
  end
  
  def new
    @kubun = Kubun.new
  end
  
  def create
    @kubun = Kubun.new(kubun_params)
    if @kubun.save
      flash[:success] = '登録できました'
      redirect_to @kubun
    else
      @kubuns = Kubun.all
      flash.now[:alert] = '区分の保存に失敗しました'
      render 'index'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @kubun.update(kubun_params)
      redirect_to kubuns_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @kubun.destroy
    redirect_to kubuns_path, notice: '削除しました'
  end
  
private
  def kubun_params
    params.require(:kubun).permit(:id, :name)
  end

  def set_kubun
    @kubun = Kubun.find(params[:id])
  end

end
