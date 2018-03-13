Rails.application.routes.draw do
  # get '/index', to: 'tasks#index'
  # get '/task/:id', to: 'tasks#show', as: :task
  # get '/new', to: 'tasks#new'
  # post '/new', to: 'tasks#create'
  resources :tasks

#     Prefix Verb  URI Pattern             Controller#Action
#     tasks GET    /tasks(.:format)          tasks#index
#           POST   /tasks(.:format)          tasks#create
#  new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#      task GET    /tasks/:id(.:format)      tasks#show
#           PATCH  /tasks/:id(.:format)      tasks#update
#           PUT    /tasks/:id(.:format)      tasks#update
#           DELETE /tasks/:id(.:format)      tasks#destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
