Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "homepages#home"
  # Defines the root path route ("/")
  # root "articles#index"
  get '/random_ducks', to: "random_ducks#index", as: 'random_ducks'
  # get '/hero_images', to: "heroes#index", as: 'hero_images'
  # get '/dota', to: "heroes#dota", as: 'dota'
  get '/random_dogs', to: "random_dogs#dogs", as: 'random_dogs'
  get '/random_foxs', to: "random_foxs#foxs", as: 'random_foxs'
  get '/home', to: "homepages#home"
end
