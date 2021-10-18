Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'

  resources :session, only: [:new, :create, :destroy]

  get 'login', to: 'session#new'  
  get 'logout', to: 'session#destroy'

  resources :users
  get 'signup', to: 'users#new'

  resources :tasks
  get 'tasks/:id/complete/:completed', to: 'tasks#complete'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
