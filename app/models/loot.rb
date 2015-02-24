class Loot < ActiveRecord::Base
  belongs_to :monster
  belongs_to :item
end
