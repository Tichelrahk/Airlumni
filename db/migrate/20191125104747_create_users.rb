class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :open_id
      t.string :profile_picture
      t.integer :lattitude
      t.integer :longitude

      t.timestamps
    end
  end
end
