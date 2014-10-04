Rails.application.routes.draw do
  root 'home#index'

  resources :home, :only => [:index]
  resources :sources, :only => [:index, :new, :create]
  resources :topics, :only => [:index, :show, :new, :create] do
  end
end
