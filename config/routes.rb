# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :sellers
  devise_for :buyers

  get 'home/signup'
  get 'home/login'
  get 'home/announcement'
  get 'home/index'
  root 'home#homepage'
end
