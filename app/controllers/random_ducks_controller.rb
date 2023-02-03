class RandomDucksController < ApplicationController
  # BASE_URL = "https://random-d.uk/api/v2".freeze

  def index
    @ducks = []

    3.times do 
      # @ducks << Fetcher.request('random')
      @ducks << DuckFetcher.request("random")
    end
  end

end