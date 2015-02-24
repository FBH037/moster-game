class Item < ActiveRecord::Base
  has_many :character_items
  has_many :characters, through: :character_items
  has_many :item_locations
  has_many :locations, through: :item_locations
  has_many :loot
  has_many :monsters, through: :loot
end
