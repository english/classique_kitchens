ClassiqueKitchens::Application.routes.draw do
  root to: 'page#home'

  resources :kitchens
  resources :features
  resources :contact

  get 'stormer_kitchens'    => 'stormer_kitchens#index'
  get 'hand_made_furniture' => 'hand_made_furniture#index'
end
