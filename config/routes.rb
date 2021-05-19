# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :sellers
  devise_for :buyers

  resources :product do
  end
  get 'home/signup'
  get 'home/shop'
  get 'home/blog'
  get 'home/contact'
  get 'shop/product'

  get 'sellers/dashboard'
  get 'sellers/products'
  get 'sellers/transactions'
  
  root 'home#homepage'
end
