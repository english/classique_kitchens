ClassiqueKitchens::Application.routes.draw do
  root to: 'page#home'
  resources :kitchens
  get "contact" => 'contact#new'
  put "contact" => 'contact#create'
end
