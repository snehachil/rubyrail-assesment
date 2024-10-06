Rails.application.routes.draw do
  devise_for :users
  resources :patients

  authenticated :user do
    root to: 'patients#index', as: :authenticated_root
  end

  root to: 'home#index'

  get 'doctors_dashboard', to: 'doctors#dashboard', as: :doctors_dashboard
end
