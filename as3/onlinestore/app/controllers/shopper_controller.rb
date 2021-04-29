class ShopperController < ApplicationController
  
  def index
	@products = params[:search] ? Product.where("name like ?", "%#{params[:search]}%").order(:name) : Product.order(:name)
  end
  
  def show
      @product = Product.find_by(id: params[:id])
  end
  
 end

