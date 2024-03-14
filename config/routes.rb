Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :links
  resources :views, path: :v, only: [:show]

  root "links#index"
end