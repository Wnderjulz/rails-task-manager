Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 #lire toutes les tasks
get 'tasks', to: 'tasks#index', as: :tasks
# #créer une task
get 'tasks/new', to: 'tasks#new', as: :new
post 'tasks', to: 'tasks#create'
#lire une task
get 'tasks/:id', to: 'tasks#show', as: :task
# #updater une task
get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
patch 'tasks/:id', to: 'tasks#update'
# #supprimer un resto
delete 'tasks/:id', to: 'tasks#destroy', as: :delete

end
