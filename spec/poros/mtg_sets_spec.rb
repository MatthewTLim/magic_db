require 'rails_helper'

RSpec.describe MtgSetPoro do
  describe "initialize" do
    it "has attributes" do
      set_attributes = {
        code: "test code",
        name: "test name",
        set_type: "test type",
        booster: "test booster",
        release_date: "test release date"
      }

      mtg_set = MtgSetPoro.new(set_attributes)

      expect(mtg_set.code).to eq(set_attributes[:code])
      expect(mtg_set.name).to eq(set_attributes[:name])
      expect(mtg_set.set_type).to eq(set_attributes[:set_type])
      expect(mtg_set.booster).to eq(set_attributes[:booster])
      expect(mtg_set.release_date).to eq(set_attributes[:release_date])
    end
  end
end