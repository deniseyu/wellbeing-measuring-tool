Rails.application.routes.draw do
  devise_for :users

  resources :studies do
    resources :records do
    end
    resources :participants do
    end
  end

  resources :records do
    resources :participants do
      resources :responses, shallow: true
    end
  end

  root 'static#welcome'

  get 'success' => 'static#success'
end
