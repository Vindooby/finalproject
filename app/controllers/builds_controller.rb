class BuildsController < ApplicationController
  def index
    @items = HTTParty.get("https://na1.api.riotgames.com/lol/static-data/v3/items?api_key=#{ENV['Riot_API_KEY']}")
    ['data']
  end
end
