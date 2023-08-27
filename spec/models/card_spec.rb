require "rails_helper"

RSpec.describe Card, type: :model do
  describe "relationships" do
    it { should have_many(:set_cards) }
    it { should have_many(:mtg_sets).through(:set_cards) }
  end
end