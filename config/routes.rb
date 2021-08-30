Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #resource :actors
  #root "actor#index"

  #get "/actors", to: "actors#index"
  #get "/actors/:id", to: "actors#show"
  
  root "actors#index"
  resources :actors

end
