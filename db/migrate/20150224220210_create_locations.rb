class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :coordinates
      t.string :terrain

      t.timestamps null: false
    end
  end
end
