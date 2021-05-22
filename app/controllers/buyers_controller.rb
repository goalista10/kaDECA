class BuyersController < ApplicationController
    def transactions
      if buyer_signed_in?
      else
          redirect_to "/buyers/sign_in"
      end
    end
  end