Rails.application.routes.draw do
  resources :events
  resources :cities
  resources :trainers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
