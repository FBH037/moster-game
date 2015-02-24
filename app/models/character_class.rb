class CharacterClass < ActiveRecord::Base
  has_many :character_class_abilities
  has_many :abilities, through: :character_class_abilities
  has_many :character_class_items
  has_many :special_items, through: :character_class_items
  has_many :characters
end
