Rottenpotatoes::Application.routes.draw do
  resources :movies
  get '/movies/:id/director', to: 'movies#show_director', :as => :director
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
