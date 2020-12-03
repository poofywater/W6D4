Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :users
  get 'users', to: 'users#index'
  post 'users', to: 'users#create'

  get 'users/:id', to: 'users/:id#show'
  patch 'users/:id', to: 'users/:id#update'
  put 'users/:id', to: 'users/:id#update'
  delete 'users/:id', to: 'users/:id#destroy'
 
  get 'users', to: 'users#new'
  
  get 'users', to: 'users#edit'

end
