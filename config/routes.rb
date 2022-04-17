Rails.application.routes.draw do
  resources :doctors
  resources :patients
  resources :apointments
end
