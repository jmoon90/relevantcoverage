Rails.application.routes.draw do
  root 'home#index'

  resources :home, :only => [:index]
  resources :sources, :only => [:index, :new, :create]
  resources :topics, :only => [:index, :show, :new, :create]
  resources :accounts, :only => [:show]
  resources :subscriptions, :only => [:new, :create]
  resources :payments, :only => [:create]

  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => "users/registrations"
  }

end
