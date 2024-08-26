Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resource :session, only: [:new, :create, :destroy], path_names: { new: 'login', destroy: 'logout' }
  resources :users, only: [:new, :create, :show]
end
