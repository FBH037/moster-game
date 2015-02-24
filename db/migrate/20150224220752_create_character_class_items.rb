class CreateCharacterClassItems < ActiveRecord::Migration
  def change
    create_table :character_class_items do |t|
      t.belongs_to :special_item, index: true
      t.belongs_to :character_class, index: true

      t.timestamps null: false
    end
    add_foreign_key :character_class_items, :special_items
    add_foreign_key :character_class_items, :character_classes
  end
end
