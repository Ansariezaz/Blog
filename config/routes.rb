Rails.application.routes.draw do
  #resources :comments
  resources :posts, :has_many => :comments
  devise_for :users
  
  get 'home/index'

  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #devise_scope :user do
  # get '/users/sign_out' => 'devise/sessions#destroy'
  #end

  root to:"home#index"

  get 'posts_path', to: 'posts#show'
  post 'comment',to: 'comments#create'
  # get 'create', to: 'posts#create'
  # get 'update', to: 'posts#update'
#end
# ActionController::Routing::Routes.draw do |map|
#   map.resources :comments
#   map.resources :posts, :has_many => :comments
#   map.connect ':controller/:action/:id'
#   map.connect ':controller/:action/:id.:format'
#   map.root :controller => "post"
end