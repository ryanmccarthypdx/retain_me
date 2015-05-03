Rails.application.routes.draw do
  resources :news, only: [:create, :destroy]
  get 'feed' => 'feed#index'
  get 'after_signup/step_0', as: 'step_0'
  get 'after_signup/step_1', as: 'step_1'
  patch 'after_signup/step_1_save', as: 'step_1_save'
  get 'after_signup/step_2', as: 'step_2'
  patch 'after_signup/step_2_save', as: 'step_2_save'

  resources :contacts, only: :create
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }
  resources :users, only: :show

  get '/linkedin' => 'linkedin#index'
  get '/linkedin_profile' => 'linkedin#linkedin_profile'

  get '/oauth_callback' => "linkedin#oauth_account"
  get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
end
