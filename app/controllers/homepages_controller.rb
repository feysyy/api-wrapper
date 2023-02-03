class HomepagesController < ApplicationController
  def home
    @path = [random_ducks_path, random_dogs_path].sample

  end
end