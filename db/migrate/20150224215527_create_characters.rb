class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :constitution
      t.integer :health
      t.integer :damage
      t.belongs_to :party, index: true

      t.timestamps null: false
    end
    add_foreign_key :characters, :parties
  end
end
