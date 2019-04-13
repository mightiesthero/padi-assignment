Rails.application.routes.draw do

  get 'api/get_users'
  post 'api/authenticate'
  post 'api/submit'
  resources :survey_images
  resources :survey_technicians
  resources :survey_sites
  resources :roles
  devise_for :users
  root to: "survey_sites#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
