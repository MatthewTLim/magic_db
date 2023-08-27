class MtgSetPoro
  attr_reader :code, :name, :set_type, :booster, :release_date

  def initialize(attributes)
    @code = attributes[:code]
    @name = attributes[:name]
    @set_type = attributes[:set_type]
    @booster = attributes[:booster]
    @release_date = attributes[:release_date]
  end
end