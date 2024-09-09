class ShopCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'cafe' },
    { id: 3, name: 'restaurant' },
    { id: 4, name: '居酒屋' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :shops
end
