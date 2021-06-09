# frozen_string_literal: true

class AdminController < ApplicationController

  def buyers
    if admin_signed_in?
      if params[:search].nil?
        @pagy, @records = pagy(Buyer.all)
      else
        @pagy, @records = pagy(Buyer.basic_search(params[:search]))
      end
    else
      redirect_to '/admins/sign_in'
    end
  end

  def admin_buyer_delete
    if admin_signed_in?
      @to_be_deleted = Buyer.find(params[:id])
      @to_be_deleted.destroy
      flash.notice = 'Buyer deleted'
      redirect_to '/admin/buyers'
    else
      redirect_to '/admins/sign_in'
    end
  end

  def admin_seller_delete
    if admin_signed_in?
      @to_be_deleted = Seller.find(params[:id])
      @to_be_deleted.destroy
      flash.notice = 'Seller deleted'
      redirect_to '/admin/sellers'
    else
      redirect_to '/admins/sign_in'
    end
  end

  def sellers
    if admin_signed_in?
      if params[:search].nil?
        @pagy, @records = pagy(Seller.all)
      else
        @pagy, @records = pagy(Seller.basic_search(params[:search]))
      end
    else
      redirect_to '/admins/sign_in'
    end
  end

  def products
    if admin_signed_in?
      if params[:search].nil?
        @pagy, @records = pagy(Product.all)
      else
        @pagy, @records = pagy(Product.basic_search(params[:search]))
      end
    else
      redirect_to '/admins/sign_in'
    end
  end

  def announcements
    if admin_signed_in?
      if params[:search].nil?
        @pagy, @records = pagy(Announcement.all)
      else
        @pagy, @records = pagy(Announcement.basic_search(params[:search]))
      end
    else
      redirect_to '/admins/sign_in'
    end
  end

  def switch
    @product = Product.find(params[:id])
    if @product.featured == 1
      @product.update(featured: 2)
    else
      @product.update(featured: 1)
    end
    redirect_to '/admin/products'
  end
end
