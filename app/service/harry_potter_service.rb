class HarryPotterService

  def get_members(house)
    response = conn.get("/v1/characters?&house=#{house}&orderOfThePhoenix=true")
    parsed_json(response)
  end

  private

  def conn
    Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.params["key"] = ENV["HP_KEY"]
    end
  end

  def parsed_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
