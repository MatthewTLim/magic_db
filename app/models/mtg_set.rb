class MtgSet < ApplicationRecord
  has_many :set_cards
  has_many :cards, through: :set_cards
end