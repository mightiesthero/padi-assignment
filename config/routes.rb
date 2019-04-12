Rails.application.routes.draw do

  resources :survey_images
  # resources :survey_technicians
  resources :survey_sites
  resources :roles
  devise_for :users

  # root to: "roles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
