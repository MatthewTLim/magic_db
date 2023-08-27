require 'rails_helper'

RSpec.describe MagicService do
  describe "#instance_methods" do
    it "returns all mtg sets" do
      search = MagicService.new.mtg_sets
    end
  end
end