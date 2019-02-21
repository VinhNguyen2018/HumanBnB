Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:create]
  end
  resources :bookings, except: [:create]

  # resources :users, only:[:show, :edit]

  resources :dashboards, only:[:show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
