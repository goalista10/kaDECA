# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage
    @all = Feature.all
  end

  def shop
    if params[:category] == "food"
      @products = Product.where('category' => 'Food')
    else
      @products = Product.all
    end
  end

  def about; end

  def announcement; end

  def deca; end
end
