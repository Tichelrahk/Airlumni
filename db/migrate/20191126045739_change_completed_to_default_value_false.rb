class ChangeCompletedToDefaultValueFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :completed, :boolean, null: false, default: false
  end
end
