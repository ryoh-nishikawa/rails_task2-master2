Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'tops#top'
  get '/blogs/index', to: 'blogs#index'

  resources:blogs do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
