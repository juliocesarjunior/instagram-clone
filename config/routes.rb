Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Dashboard
  get "/dashboard" => "admins#index"
  get "profile/:username" => "admins#profile", as: :profile

  resources :posts, only: [:new, :create, :show]

  root to: "public#homepage"
end
