class CreateMounts < ActiveRecord::Migration
  def change
    create_table :mounts do |t|
      t.string :name
      t.string :species
      t.boolean :flying

      t.timestamps null: false
    end
  end
end
