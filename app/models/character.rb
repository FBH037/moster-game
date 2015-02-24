class Character < ActiveRecord::Base
  belongs_to :party
  belongs_to :character_class
  belongs_to :location
  has_one :mount
  has_many :character_items
  has_many :items, through: :character_items
end
