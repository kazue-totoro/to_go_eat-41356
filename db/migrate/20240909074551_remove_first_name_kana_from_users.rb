class RemoveFirstNameKanaFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :first_name_kana, :string
  end
end
