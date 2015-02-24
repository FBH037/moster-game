class Ability < ActiveRecord::Base
  has_many :character_class_abilities
  has_many :character_class, through: :character_class_abilities
end
