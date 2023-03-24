Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'login', to: 'sessions#login'
  delete 'logout', to: 'sessions#logout'
  get "/me", to: "users#show"
end
