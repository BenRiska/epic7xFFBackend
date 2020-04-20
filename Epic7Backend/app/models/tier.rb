class Tier < ApplicationRecord
  belongs_to :boss
  belongs_to :unit
end
