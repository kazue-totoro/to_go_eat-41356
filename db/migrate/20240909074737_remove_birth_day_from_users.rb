class RemoveBirthDayFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :birth_day, :date
  end
end
