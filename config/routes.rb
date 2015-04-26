Rails.application.routes.draw do
  devise_for :users

  resources :studies do
    resources :records do
    end
    resources :participants
  end

  resources :records do
    resources :responses
  end

  root 'static#welcome'

  get 'success' => 'static#success'
end
