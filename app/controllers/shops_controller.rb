class ShopsController < ApplicationController
  def index
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def list
    @shops = Shop.where(shop_category_id: params[:shop_category_id]).order(created_at: :desc)
  end

  private

  def shop_params
    params.require(:shop).permit(:image, :shop_category_id, :name, :address, :phone_number).merge(user_id: current_user.id)
  end
end
