class RandomDogsController < ApplicationController
  def dogs
    @dogs = []

    3.times do 
      @dogs << DogFetcher.request("woof.json")
    end
  end
end