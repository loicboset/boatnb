Rails.application.routes.draw do
  get 'host/boats' => 'host#boats'

  post 'boats' => 'boats#create'
  get 'boats/:id' => 'boats#show'
  patch 'boats/:id' => 'boats#update'

  get 'home/index' => 'home#index'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
