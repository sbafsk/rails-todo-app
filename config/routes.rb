Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]

  get 'log_in', to: 'session#new'  
  get 'log_out', to: 'session#destroy'

  resources :users
  get 'sign_up', to: 'users#new'

  resources :tasks
  get 'tasks/:id/complete/:completed', to: 'tasks#complete'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
