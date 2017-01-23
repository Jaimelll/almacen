Rails.application.routes.draw do

  resources :parameters
#  get 'variables/form'
#  post 'variables/form'
  match 'variables/form', via: [:get,:post], as: :variables
resources :items do
  resources :details
end

  devise_for :users
  root 'welcome#index'

  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
