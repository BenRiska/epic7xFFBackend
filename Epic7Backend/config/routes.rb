Rails.application.routes.draw do
  resources :tiers
  resources :moves
  resources :bosses
  resources :emails
  resources :artefacts
  resources :arts
  resources :items
  resources :units
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
