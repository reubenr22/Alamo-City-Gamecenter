Rails.application.routes.draw do

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  devise_for :users
  
  root 'storefront#all_items'

  get 'store' => 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category' 

  get 'branding' => 'storefront#items_by_brand'
  
  resources :products
  
  get 'products' => 'products#index'

end
