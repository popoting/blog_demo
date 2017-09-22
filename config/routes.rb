Rails.application.routes.draw do
  resources :posts
  root 'welcome#index'
  resources :contacts, only: [:new, :create]

end
