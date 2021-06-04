# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  #devise_for :sellers
  devise_for :buyers
  devise_for :sellers, controllers: { omniauth_callbacks: 'sellers/omniauth_callbacks' }
  resources :product 
  resources :announcement 

  get 'home/signup'
  get 'home/shop/:category' , to: 'home#shop', as: 'home_shop'
  get 'home/announcement/:category', to: 'home#announcement', as: 'home_announcement'
  get 'home/deca'
  get 'home/request_account_delete'

  get 'buyers/favorites'
  get 'buyers/add_favorite/:id', to: 'buyers#add_favorite', as: 'add_favorite'
  get 'buyers/remove_favorite/:id', to: 'buyers#remove_favorite', as: 'remove_favorite'

  get 'sellers/products'
  get 'sellers/add_product'

  get 'admin/buyers'
  get 'admin/sellers'
  get 'admin/announcements'
  get 'admin/products'
  get 'admin/add_announcement'
  delete 'admin/buyer/:id', to: 'admin#admin_buyer_delete', as: 'admin_buyer_delete'
  delete 'admin/seller/:id', to: 'admin#admin_seller_delete', as: 'admin_seller_delete'

  root 'home#homepage'
end
