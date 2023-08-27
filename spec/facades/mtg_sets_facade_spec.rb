require 'rails_helper'

RSpec.describe MtgSetsFacade do
  describe "self methods" do
    it "returns sets" do
      MtgSetsFacade.mtg_sets.each do |mtg_set|
        expect(mtg_set).to be_a MtgSetPoro
      end
      require 'pry'; binding.pry
      expect(MtgSetsFacade.mtg_sets.count).to eq(500)
    end
  end
end