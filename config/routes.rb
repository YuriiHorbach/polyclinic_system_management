Rails.application.routes.draw do
  root to: "page#index"
  resources :doctors
  resources :patients
  resources :apointments
end
