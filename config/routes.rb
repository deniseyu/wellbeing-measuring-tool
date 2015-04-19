Rails.application.routes.draw do
  devise_for :users

  resources :studies do
    resources :records
    resources :participants
  end
  
  root 'static#welcome'
end
