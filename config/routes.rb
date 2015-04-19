Rails.application.routes.draw do
  devise_for :users

  resources :studies do
    resources :records do
      resources :responses, shallow: true
    end
    resources :participants
  end

  root 'static#welcome'
end
