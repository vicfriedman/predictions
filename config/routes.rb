Predictions::Application.routes.draw do
  resources :predictions, :only => [:create, :new, :show]
  root :to => 'predictions#new'
end