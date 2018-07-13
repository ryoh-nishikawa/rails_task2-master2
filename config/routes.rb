Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'tops#top'
  get '/blogs/index', to: 'blogs#index'
  get '/favorites/show', to: 'favorites#show'

  resources:blogs do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]

end
