Rails.application.routes.draw do

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

#Having trouble merging so adding this line in

end
