class RandomFoxsController < ApplicationController
  def foxs
    @foxs = []

    3.times do 
      @foxs << FoxFetcher.request("floof")
    end
  end

end