class MtgSetsFacade
  def self.mtg_sets
    service = MagicService.new
    raw_sets = service.mtg_sets
    raw_sets[:sets].map do |raw_set|
      MtgSetPoro.new(code: raw_set[:code],
                  name: raw_set[:name],
                  set_type: raw_set[:type],
                  booster: raw_set[:booster],
                  release_date: raw_set[:releaseDate])
    end
  end
end