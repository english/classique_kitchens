ClassiqueKitchens::Application.routes.draw do
  root to: 'page#home'

  resources :kitchens
  resources :features
  resources :sessions
  resources :users

  get 'contact' => 'contact#new'
  put 'contact' => 'contact#create'

  get 'stormer_kitchens'    => 'stormer_kitchens#index'
  get 'hand_made_furniture' => 'hand_made_furniture#index'
end
