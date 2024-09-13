class AddMemoToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :memo, :text
  end
end
