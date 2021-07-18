Rails.application.routes.draw do
  # For details on the DSL available withi
  root to: 'tasks#index'
  
  resources :tasks
end
