Rails.application.routes.draw do
  resources :tweets
  devise_for :users

  get '/' => 'tweets#index'
end
