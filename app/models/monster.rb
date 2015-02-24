class Monster < ActiveRecord::Base
  has_many :lairs
  has_many :locations, through: :lairs
  has_many :loots
  has_many :items, through: :loots
end
