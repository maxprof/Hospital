Rails.application.routes.draw do
  get 'contact/index'
  devise_for :doctors, :controllers => { registrations: 'registrations' }
  resources :news
  resources :prices
  get 'healthy/index'
  get 'about/index'

  resources :users
  resources :doctors


  root 'users#main'

end
