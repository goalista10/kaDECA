# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage

  end

  def shop
    if params[:category] == "All"
      @count = Product.count
      @pagy, @records = pagy(Product.all)
    else
      @count = Product.where('category' => params[:category]).count
      @pagy, @records = pagy(Product.where('category' => params[:category]))
    end
  end

  def about; end

  def announcement
    if params[:category] == "All"
      @announcement = Announcement.all    
    else
      @announcement = Announcement.where('category' => params[:category])
    end
  end

  def deca; end
end
