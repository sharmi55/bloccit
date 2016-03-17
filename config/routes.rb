Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  # instead of line above, also generated intiially as:
  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/edit"
  post 'confirm' => 'users#confirm'
  get 'about' => 'welcome#about'
# instead of line above, also generated initially as:
# get "welcome/index"
# get "welcome/about"

  root 'welcome#index'

end
