class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :destroy]
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

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

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(params[:id])
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @shop.destroy
    redirect_to root_path
  end

  private

  def shop_params
    params.require(:shop).permit(:image, :shop_category_id, :name, :address, :phone_number).merge(user_id: current_user.id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
