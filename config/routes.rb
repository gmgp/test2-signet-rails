Test2SignetRails::Application.routes.draw do
  get "home/index"
  match '/signout' => 'sessions#destroy', as: :signout

  get '/signet/google/auth_callback' => 'sessions#create'

  root to: 'home#index'
end
