class CreateCharacterClassAbilities < ActiveRecord::Migration
  def change
    create_table :character_class_abilities do |t|
      t.belongs_to :character_class, index: true
      t.belongs_to :ability, index: true

      t.timestamps null: false
    end
    add_foreign_key :character_class_abilities, :character_classes
    add_foreign_key :character_class_abilities, :abilities
  end
end
