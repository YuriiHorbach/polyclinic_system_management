Rails.application.routes.draw do
  root "static#home"
  devise_for :users
  scope '/admin' do
    resources :users
  end
  resources :doctors
  resources :patients
  resources :apointments
end