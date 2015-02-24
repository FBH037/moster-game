class CharacterClassItem < ActiveRecord::Base
  belongs_to :special_item
  belongs_to :character_class
end
