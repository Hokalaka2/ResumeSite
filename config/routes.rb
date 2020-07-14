Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'
  get '/about', to: 'pages#about'
  get '/resume', to: 'pages#resume'
  get '/mymission', to: 'pages#mission'
  
  resources :blogs
end
