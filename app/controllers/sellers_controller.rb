class SellersController < ApplicationController
  def products
    if seller_signed_in?
      @pagy, @records = pagy(current_seller.products)
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
