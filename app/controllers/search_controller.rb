class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.params["key"] = ENV["HP_KEY"]
    end

    response = conn.get("/v1/characters?&house=#{house}&orderOfThePhoenix=true")

    json = JSON.parse(response.body, symbolize_names: true)

    @members = json
  end
end
