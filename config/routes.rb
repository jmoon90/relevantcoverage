Rails.application.routes.draw do
  root "sources#index"

  resources :sources, :only => [:index, :new, :create]
  resources :topics, :only => [:index, :show, :new, :create]
  resources :coverages, :only => [:new, :create]
end
