require "rails_helper"

RSpec.describe MtgSet, type: :model do
  describe "relationships" do
    it { should have_many(:set_cards) }
    it { should have_many(:cards).through(:set_cards) }
  end
end