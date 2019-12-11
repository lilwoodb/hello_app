Rails.application.routes.draw do
  get 'stims/new'

  #get 'static_pages/...'

  root 'static_pages#home'
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/sources', to: 'static_pages#sources'
  get  '/submit',  to: 'stims#new'

  resources :users, :stims

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
end
