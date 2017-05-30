class WelcomeController < ApplicationController
  def index
    @champions = HTTParty.get("https://na1.api.riotgames.com/lol/static-data/v3/champions?champListData=all&dataById=true&api_key=#{ENV['Riot_API_KEY']}")['data']


  end
end
