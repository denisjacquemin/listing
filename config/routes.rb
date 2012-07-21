Listing::Application.routes.draw do
  resources :restaurants, :only => [:index]
end
