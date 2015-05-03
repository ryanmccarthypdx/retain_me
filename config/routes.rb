Rails.application.routes.draw do
  resources :contacts, only: :create
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }
  resources :users, only: :show
  resources :after_signup

  get '/linkedin' => 'linkedin#index'
  get '/linkedin_profile' => 'linkedin#linkedin_profile'
  get '/oauth_account' => "linkedin#oauth_account"
  get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
end
