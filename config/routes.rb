Rails.application.routes.draw do

  get 'offer_details/index'

  root 'tops#index'

  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to:'sessions#destroy'

  resources 'users'
  resources 'offers'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
