# == Route Map
#
#           Prefix Verb   URI Pattern                                 Controller#Action
# v1_user_projects GET    /v1/users/:user_username/projects(.:format) v1/projects#index
#                  POST   /v1/users/:user_username/projects(.:format) v1/projects#create
#       v1_project GET    /v1/projects/:id(.:format)                  v1/projects#show
#                  PATCH  /v1/projects/:id(.:format)                  v1/projects#update
#                  PUT    /v1/projects/:id(.:format)                  v1/projects#update
#                  DELETE /v1/projects/:id(.:format)                  v1/projects#destroy
#         v1_users GET    /v1/users(.:format)                         v1/users#index
#                  POST   /v1/users(.:format)                         v1/users#create
#          v1_user GET    /v1/users/:username(.:format)               v1/users#show
#                  PATCH  /v1/users/:username(.:format)               v1/users#update
#                  PUT    /v1/users/:username(.:format)               v1/users#update
#                  DELETE /v1/users/:username(.:format)               v1/users#destroy
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :users, param: 'username' do
      resources :projects, shallow: true
    end
  end
end
