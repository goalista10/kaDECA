# frozen_string_literal: true

class AdminController < ApplicationController
    def dashboard
        if admin_signed_in?
            @buyer_count = Buyer.all.count
            @seller_count = Seller.all.count
            @product_count = Product.all.count
        else
            redirect_to "/admins/sign_in"
        end
    end

    def buyers
        if admin_signed_in?

        else
            redirect_to "/admins/sign_in"
        end
    end

    def sellers
        if admin_signed_in?

        else
            redirect_to "/admins/sign_in"
        end
    end

    def products
        if admin_signed_in?

        else
            redirect_to "/admins/sign_in"
        end
    end

    def announcements
        if admin_signed_in?

        else
            redirect_to "/admins/sign_in"
        end
    end
  
  end
  