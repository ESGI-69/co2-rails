Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "about", to: "about#index"
  get "calculate", to: "journeys#index", as: "journeys"
  post "result", to: "journeys#result"
  get "transports", to: "transports#index"
  get "users", to: "users#index"
  post "users", to: "users#delete"
end
 