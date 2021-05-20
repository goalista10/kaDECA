# frozen_string_literal: true

class AdminController < ApplicationController
    def dashboard
        @buyer_count = Buyer.all.count
        @seller_count = Seller.all.count
        @product_count = Product.all.count
    end

    def buyers
    end

    def sellers
    end

    def products
    end

    def announcements
    end
  
  end
  