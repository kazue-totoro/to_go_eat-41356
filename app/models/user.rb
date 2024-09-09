class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname, :birth_day
    validates :family_name, format: { with: /\A[\p{Hiragana}\p{Katakana}\p{Han}ー]+\z/ }
    validates :first_name, format: { with: /\A[\p{Hiragana}\p{Katakana}\p{Han}ー]+\z/ }
    validates :family_name_kana, format: { with: /\A[\p{Katakana}ー]+\z/ }
    validates :first_name_kana, presence: true, format: { with: /\A[\p{Katakana}ー]+\z/ }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end

  has_many :user_shops
  has_many :shops, through: :user_shops
end
