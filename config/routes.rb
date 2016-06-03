Rails.application.routes.draw do

  resources :episodes
  root 'welcome#index'

end
