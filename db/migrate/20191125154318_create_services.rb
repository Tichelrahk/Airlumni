class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :user, foreign_key: true
      t.boolean :availability_weekday
      t.boolean :availability_weeknight
      t.boolean :availability_weekend_day
      t.boolean :availability_weekend_night

      t.timestamps
    end
  end
end
