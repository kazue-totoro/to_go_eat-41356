class AddVisitedToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :visited, :boolean
  end
end
