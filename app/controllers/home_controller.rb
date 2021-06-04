# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage; end

  def shop
    if params[:search].nil?
      if params[:category] == 'All'
        @count = Product.count
        @pagy, @records = pagy(Product.all.order('name ASC, cost ASC'))
      else
        @products = Product.where(category: params[:category])
        @count = @products.count
        @pagy, @records = pagy(@products.order('name ASC, cost ASC'))
      end
    else
      @products = Product.basic_search(params[:search])
      @count = @products.length
      @pagy, @records = pagy(@products.order('name ASC, cost ASC'))
    end
  end

  def about; end

  def request_account_delete; end
  
  def announcement
    if params[:category] == 'All'
      @pagy, @records = pagy(Announcement.all)
    else
      @count = Product.where('category' => params[:category]).count
      @pagy, @records = pagy(Announcement.where('category' => params[:category]))
    end
  end

  def deca; end
end
