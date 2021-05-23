# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :sellers
  devise_for :buyers

  resources :product 
  resources :announcement 

  get 'home/signup'
  get 'home/shop/:category' , to: 'home#shop', as: 'home_shop'
  get 'home/about'
  get 'home/announcement/:category', to: 'home#announcement', as: 'home_announcement'
  get 'home/deca'

  get 'buyers/transactions'

  get 'sellers/dashboard'
  get 'sellers/products'
  get 'sellers/transactions'
  get 'sellers/add_product'

  get 'admin/buyers'
  get 'admin/sellers'
  get 'admin/announcements'
  get 'admin/products'
  get 'admin/dashboard'
  get 'admin/add_announcement'

  root 'home#homepage'
end
