Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'admin/dashboard#index'
  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :tickets
  resources :formulas
  resources :details
  resources :products
  resources :parameters
  resources :items
  resources :clients

  match 'variables/form', via: [:get]
  match 'variables/form2', via: [:get]
  match 'variables/comment', via: [:get]
  match 'reports/vhoja1', via: [:get]
  match 'reports/vhoja2', via: [:get]
end
