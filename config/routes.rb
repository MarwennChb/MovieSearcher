Rails.application.routes.draw do
  #get 'movies/search'

	root to: 'movies#index'

 	resources :movies

 	post '/', to: 'movies#search' 
 	#get "movies/search/:name", to: "movies#search", as: "search"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
