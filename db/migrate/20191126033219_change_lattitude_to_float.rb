class ChangeLattitudeToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :lattitude, :float
  end
end
