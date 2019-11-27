class ChangeLattitudeToLatitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :lattitude, :latitude
  end
end
