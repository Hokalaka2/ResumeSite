Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'
  get '/resume_pdf', to: 'pages#resume_pdf'
  resources :contacts, only: :create
  
  resources :blogs
end
