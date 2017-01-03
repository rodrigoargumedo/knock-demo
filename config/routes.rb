Rails.application.routes.draw do
  get '/:id' => 'users#show'
  resources :users do
    
  end
end
