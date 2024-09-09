class Shop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }
  validates :shop_category_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shop_category
end
