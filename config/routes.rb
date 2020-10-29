Rails.application.routes.draw do
# get 'gossips/:user_entry', to: 'gossips#new'
#  get 'gossips/:user_entry', to: 'gossips#create'

  resources :gossips
  resources :users, only: [:show]
  resources :cities, only: [:show]

end
