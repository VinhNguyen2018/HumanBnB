Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:create]
    resources :reviews, only: [ :index, :show, :new, :create]
  end
  resources :bookings, except: [:create]

  resources :users, only:[:show, :update]

  resources :dashboards, only:[:show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
