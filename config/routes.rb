Rails.application.routes.draw do
  root 'epicenter#feed'

  get 'show_user' => 'epicenter#show_user'
  get 'now_following' => 'epicenter#now_following'
  get 'unfollow' => 'epicenter#unfollow'
  resources :tweets
  devise_for :users

  get 'tag_tweets' => 'epicenter#tag_tweets'

  get 'all_users' => 'epicenter#all_users'

  #get '/' => 'tweets#index'
end
