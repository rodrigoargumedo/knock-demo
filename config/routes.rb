Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :users, param: 'username' do
      resources :projects, shallow: true
    end
  end
end
