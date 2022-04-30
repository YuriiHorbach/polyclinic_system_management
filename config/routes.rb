Rails.application.routes.draw do
  root "static#home"
  devise_for :users
  resources :doctors
  resources :patients
  resources :apointments
end