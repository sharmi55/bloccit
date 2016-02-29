Rails.application.routes.draw do

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  root 'welcome#index'

#Having trouble merging so adding this line in
# add line to try to commit again as not all files were committed for some reason.
end
