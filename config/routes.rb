Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/destroy'
  get 'tasks/task_1'
  post 'tasks/task_1_create'
  resources :tasks
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
