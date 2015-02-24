class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :encumberance

      t.timestamps null: false
    end
  end
end
