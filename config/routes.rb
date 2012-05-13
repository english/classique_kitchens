ClassiqueKitchens::Application.routes.draw do
  root to: 'page#home'
  resources :kitchens
  #resources :stormer_kitchens, :controller => "kitchens", :type => "StormerKitchen"
  #resources :hand_made_kitchens, :controller => "kitchens", :type => "HandMadeKitchen"
end
