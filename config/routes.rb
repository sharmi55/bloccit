Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end
  # instead of line above, also generated intiially as:
  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/edit"

  get 'about' => 'welcome#about'
# instead of line above, also generated initially as:
# get "welcome/index"
# get "welcome/about"

  root 'welcome#index'

end
