Rails.application.routes.draw do

resource :registrations, only: [:new, :create]
resource :sessions, only: [:new, :create, :destroy]
resource :settings, only: [:edit, :update]

resources :users, only: [:index, :show] do
	get :favorites, on: :member
end

resources :tweets do
	resource :favorites, only: [:create, :destroy]
end

  root to: 'registrations#new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
