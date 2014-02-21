Codium::Application.routes.draw do

  # Users
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  get 'users/:id' => 'users#show'
  get 'me/profile' => 'users#profile'


  resources :posts
  root :to => "pages#home" 
end
