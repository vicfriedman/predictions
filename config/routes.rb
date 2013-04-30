Predictions::Application.routes.draw do
  resources :users


  resources :predictions, :only => [:create, :new, :show]
  root :to => 'predictions#new'
end