class CreateCharacterItems < ActiveRecord::Migration
  def change
    create_table :character_items do |t|
      t.belongs_to :item, index: true
      t.belongs_to :character, index: true

      t.timestamps null: false
    end
    add_foreign_key :character_items, :items
    add_foreign_key :character_items, :characters
  end
end
