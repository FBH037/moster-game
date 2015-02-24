class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :species
      t.integer :health
      t.integer :damage

      t.timestamps null: false
    end
  end
end
