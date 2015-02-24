class CreateSpecialItems < ActiveRecord::Migration
  def change
    create_table :special_items do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
