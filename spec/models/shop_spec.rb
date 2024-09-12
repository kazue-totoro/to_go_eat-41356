require 'rails_helper'

RSpec.describe Shop, type: :model do
  before do
    @shop = FactoryBot.build(:shop)
  end

  describe 'お店の新規追加' do
    context '新規追加できる場合' do
      it 'shop_category_id、name、address、phone_numberが存在すれば追加できる' do
        expect(@shop).to be_valid
      end
      it 'addressが空でも登録できる' do
        @shop.address = ''
        expect(@shop).to be_valid
      end
      it 'phone_numberが空でも登録できる' do
        @shop.phone_number = ''
        expect(@shop).to be_valid
      end
    end

    context '新規追加できない場合' do
      it 'shop_category_idが空では追加できない' do
        @shop.shop_category_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop category can't be blank")
      end

      it 'nameが空では追加できない' do
        @shop.name = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
