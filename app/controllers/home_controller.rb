# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage
    @all = Feature.all
  end

  def shop
    if params[:category] == "All"
      @products = Product.all
    else
      @products = Product.where('category' => params[:category])
    end

    if params[:category] == "All"
      @announcement = Announcement.all    
    else
      @announcement = Announcement.where('category' => params[:category])
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
