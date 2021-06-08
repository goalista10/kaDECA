# frozen_string_literal: true

class AdminController < ApplicationController

  def buyers
    if admin_signed_in?
      @pagy, @records = pagy(Buyer.all)
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
      @pagy, @records = pagy(Seller.all)
    else
      redirect_to '/admins/sign_in'
    end
  end

  def products
    if admin_signed_in?
      @pagy, @records = pagy(Product.all)
    else
      redirect_to '/admins/sign_in'
    end
  end

  def announcements
    if admin_signed_in?
      @pagy, @records = pagy(Announcement.all)
    else
      redirect_to '/admins/sign_in'
    end
  end
end
