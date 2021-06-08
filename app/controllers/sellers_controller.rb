class SellersController < ApplicationController
  def products
    if seller_signed_in?
      @pagy, @records = pagy(current_seller.products.where(featured: 1))
    else
      redirect_to '/sellers/sign_in'
    end
  end

  def hidden_products
    if seller_signed_in?
      @pagy, @records = pagy(current_seller.products.where(featured: 0))
    else
      redirect_to '/sellers/sign_in'
    end
  end

  def hide
    if seller_signed_in?
      @to_hide = current_seller.products.where(id: params[:id])
      if @to_hide.update(featured: 0)
        flash.notice = 'Product hidden'
        redirect_to '/sellers/products'
      else
        @error = @update_product.errors.full_messages.first
        flash.alert = @error
        redirect_to '/sellers/products'
      end
    else
      redirect_to '/sellers/sign_in'
    end
  end

  def show
    if seller_signed_in?
      @to_hide = current_seller.products.where(id: params[:id])
      if @to_hide.update(featured: 1)
        flash.notice = 'Product visible'
        redirect_to '/sellers/hidden_products'
      else
        @error = @update_product.errors.full_messages.first
        flash.alert = @error
        redirect_to '/sellers/hidden_products'
      end
    else
      redirect_to '/sellers/sign_in'
    end
  end

  def add_product
    if seller_signed_in?
      @model = current_seller.products.build
    else
      redirect_to '/sellers/sign_in'
    end
  end
end
