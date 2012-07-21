Listing::Application.routes.draw do
  resources :restaurants, :only => [:index, :create, :show]
  
  root :to => 'restaurants#index'
  
end
