class CreateLoots < ActiveRecord::Migration
  def change
    create_table :loots do |t|
      t.belongs_to :monster, index: true
      t.belongs_to :item, index: true

      t.timestamps null: false
    end
    add_foreign_key :loots, :monsters
    add_foreign_key :loots, :items
  end
end
