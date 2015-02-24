class CreateItemLocations < ActiveRecord::Migration
  def change
    create_table :item_locations do |t|
      t.belongs_to :item, index: true
      t.belongs_to :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :item_locations, :items
    add_foreign_key :item_locations, :locations
  end
end
