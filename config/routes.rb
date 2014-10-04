Rails.application.routes.draw do
  root "sources#index"

  resources :sources

  resources :coverages
end
