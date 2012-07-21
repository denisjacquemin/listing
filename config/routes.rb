Listing::Application.routes.draw do
  resources :restaurants, :only => [:index, :create]
  
  root :to => 'restaurants#index'
  
end
