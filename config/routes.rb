# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :sellers
  devise_for :buyers

  resources :product do
  end
  get 'home/signup'
  get 'home/shop/:category' , to: 'home#shop', as: 'home_shop'
  get 'home/blog'
  get 'home/contact'

  get 'sellers/dashboard'
  get 'sellers/products'
  get 'sellers/transactions'
  
  root 'home#homepage'
end
