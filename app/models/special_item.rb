class SpecialItem < ActiveRecord::Base
  has_many :character_class_items
  has_many :character_classes, through: :character_class_items
end
