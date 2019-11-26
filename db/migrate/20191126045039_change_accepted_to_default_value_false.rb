class ChangeAcceptedToDefaultValueFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :accepted, :boolean, null: false, default: false
  end
end
