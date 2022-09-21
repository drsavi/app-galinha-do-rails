Rails.application.routes.draw do
  resources :activity_records
  resources :groups
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
