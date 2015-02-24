class CharacterClassAbility < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :ability
end
