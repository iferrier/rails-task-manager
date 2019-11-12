Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'tasks#index'
  get '/index', to: 'tasks#index', as: :tasks
  get 'tasks/new', to: 'tasks#new', as: :task_new
  post '/index', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
