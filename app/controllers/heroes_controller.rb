class HeroesController < ApplicationController

  def index
    # @heroes = []
    # [:zeus, :np, :collapse, :ursa, :voidS].each do |each|
    #  @heroes << HeroImages.get_all_heroes.fetch(each)
    # end

    @all_hero = HeroImages.get_all_heroes
    @dotas = Fetcher.dota_request("hero")
  end

  def dota
  end

end