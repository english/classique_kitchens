ClassiqueKitchens::Application.routes.draw do
  resources :users

  root to: 'page#home'

  resources :kitchens
  resources :features

  get 'contact' => 'contact#new'
  put 'contact' => 'contact#create'

  get 'stormer_kitchens'    => 'stormer_kitchens#index'
  get 'hand_made_furniture' => 'hand_made_furniture#index'
end
