Rails.application.routes.draw do

  root :to =>'pages#home'
  resources :users, :only => [:new, :create]
  get '/login' =>'session#new'  #sign in frm
  post '/login' => 'session#create' #sign in action
  delete '/login' =>'session#destroy' #sign out
  
  resources :foodtypes #plural
  resources :recipes #plural

end
