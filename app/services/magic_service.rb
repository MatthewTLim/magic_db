class MagicService

  def mtg_sets
    get_url("/v1/sets")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.magicthegathering.io" )
  end
end