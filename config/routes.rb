Rails.application.routes.draw do


  resources :products do
    resources :formulas
  end

  resources :parameters
#  get 'variables/form'
#  post 'variables/form'
  match 'variables/form', via: [:get]
  match 'variables/comment', via: [:get]

resources :items do
  resources :details
end

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :admin do
    resources :products do
      resources :formulas
    end
  end



  root 'welcome#index'

  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
