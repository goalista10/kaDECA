class SellersController < ApplicationController
    def products
      if seller_signed_in?
      else
          redirect_to "/sellers/sign_in"
      end
    end

    def transactions
      if seller_signed_in?
      else
          redirect_to "/sellers/sign_in"
      end
    end

    def dashboard
      if seller_signed_in?
      else
          redirect_to "/sellers/sign_in"
      end
    end

    def add_product
      if seller_signed_in?
      else
          redirect_to "/sellers/sign_in"
      end
    end
  end