ClassiqueKitchens::Application.routes.draw do
  get "stormer_kitchens" => 'stormer_kitchens#index'

  root to: 'page#home'
  resources :kitchens
  get "contact" => 'contact#new'
  put "contact" => 'contact#create'
end
