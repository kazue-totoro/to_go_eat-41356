class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.integer    :shop_category_id, null: false
      t.string     :name            , null: false
      t.string     :address
      t.string     :phone_number
      t.references :user            , null: false, foreign_key: true
      t.timestamps
    end
  end
end
