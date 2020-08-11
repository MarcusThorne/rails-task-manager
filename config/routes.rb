Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 1. see all task
  get "tasks", to: "tasks#index"
  # 2. view task details (one task)
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  # 3. add a task
  post "tasks", to: "tasks#create"
  # 4. Edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # 5. I can remove a task
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
