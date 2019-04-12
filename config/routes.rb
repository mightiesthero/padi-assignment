Rails.application.routes.draw do

  resources :survey_sites
  devise_for :users

  resources :roles

  # root to: "roles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
