require "rails_helper"

RSpec.describe SetCard, type: :model do
  describe "relationships" do
    it { should belong_to(:mtg_set) }
    it { should belong_to(:card) }
  end
end