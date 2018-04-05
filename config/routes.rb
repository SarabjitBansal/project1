Rails.application.routes.draw do

  get '/recipes/types_index' => 'recipes#types_index'
  get '/recipes/types_index/:type' => 'recipes#by_type'
  get '/recipes/favoriterecipe' => 'recipes#favoriterecipe'
  get '/recipes/famousrecipe' => 'recipes#famousrecipe'
  root :to =>'pages#home'
  resources :users, :only => [:new, :create]
  get '/login' =>'session#new'  #sign in frm
  post '/login' => 'session#create' #sign in action
  delete '/login' =>'session#destroy' #sign out
  resources :foodtypes #plural
  resources :recipes #plural

  # put '/recipes/:id/recipe' => 'recipes#favourite' as favourite_recipe
  # resources :recipes do
  #  put :favourite, :on => :member

   resources :recipes do
    member do
      put "favorite" => "recipes#favorite"
      put "unfavorite" => "recipes#unfavorite"
    end
      put :favorite, on: :member
  end
end
