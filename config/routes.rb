Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "controller#tasks"
  get "/tasks", to: "tasks#index", as: :tasks

  get "tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create", as: :create_task

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  get "tasks/:id", to: "tasks#show", as: :task

  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

  # root "articles#index"
end
