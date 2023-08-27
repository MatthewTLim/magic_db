class Card < ApplicationRecord
  has_many :set_cards
  has_many :mtg_sets, through: :set_cards
end