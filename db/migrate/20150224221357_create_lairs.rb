class CreateLairs < ActiveRecord::Migration
  def change
    create_table :lairs do |t|
      t.belongs_to :location, index: true
      t.belongs_to :monster, index: true

      t.timestamps null: false
    end
    add_foreign_key :lairs, :locations
    add_foreign_key :lairs, :monsters
  end
end
