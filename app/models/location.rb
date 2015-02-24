class Location < ActiveRecord::Base
  has_many :item_locations
  has_many :items, through: :item_locations
  has_many :lairs
  has_many :monsters, through: :lairs
  has_many :characters
end
