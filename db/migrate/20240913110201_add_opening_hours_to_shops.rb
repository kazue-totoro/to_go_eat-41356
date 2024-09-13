class AddOpeningHoursToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :opening_hours, :string
  end
end
