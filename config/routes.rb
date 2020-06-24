Rails.application.routes.draw do
  get 'host/boats' => 'host#boats'

  get 'home/index' => 'home#index'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
