Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidkiq"
  devise_for :users
  root 'welcom#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
