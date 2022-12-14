Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  devise_for :admins
  devise_for :users
  get 'dashboard/index'
  resources :activity_records
  resources :groups
  resources :activities
  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
