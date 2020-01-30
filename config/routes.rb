Rails.application.routes.draw do
  get 'posts/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :posts, only: :index
end
