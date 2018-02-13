class MarkmethodsController < ApplicationController
  before_action :set_markmethod, only: [:show, :edit, :update, :destroy]
  
  def index
    @markmethods = Markmethod.all
  end
  
  def new
    @markmethod = Markmethod.new
  end
  
  def show
  end
  
  def create
    @markmethod = Markmethod.new(markmethod_params)
    if @markmethod.save
      flash[:success] = '登録できました'
      redirect_to @markmethod
    else
      @markmethods = Markmethod.all
      flash.now[:alert] = '加工方法の保存に失敗しました'
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    if @markmethod.update(markmethod_params)
      redirect_to markmethods_path, notice: '編集しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @markmethod.destroy
    redirect_to markmethods_path, notice: '削除しました'
  end
  
private
  def markmethod_params
    params.require(:markmethod).permit(:id, :name)
  end

  def set_markmethod
    @markmethod = Markmethod.find(params[:id])
  end

  
end
