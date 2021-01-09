Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Show all Tasks
  get '/tasks', to: 'tasks#index'

  # Create a new task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: "tasks#create"

  #Update task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'

  # Show 1 Task 
  get '/tasks/:id', to: 'tasks#show', as: :task

  # resources :tasks
end
