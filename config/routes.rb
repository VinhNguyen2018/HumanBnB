Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :services, except: [:index]
  end
  resources :services, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
