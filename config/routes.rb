Rails.application.routes.draw do
  get 'patients_sort/last_three'

  get 'patients_sort/last_seven'

  get 'patients_sort/last_one'

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
