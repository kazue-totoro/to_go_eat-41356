class RemoveFamilyNameFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :family_name, :string
  end
end
