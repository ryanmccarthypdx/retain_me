Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }
  resources :users, only: :show

  
  get '/auth/linkedin/callbacks', :to => "linkedin#oauth"

end
