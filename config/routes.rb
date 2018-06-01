Rails.application.routes.draw do
  get root to: 'home#index'
  get 'auth/google/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :blog_posts, only: [:create]
    end
  end
end
