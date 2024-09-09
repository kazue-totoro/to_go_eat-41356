class RemoveFamilyNameKanaFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :family_name_kana, :string
  end
end
