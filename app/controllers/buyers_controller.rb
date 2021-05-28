class BuyersController < ApplicationController
    def favorites
      if buyer_signed_in?
        @count = current_buyer.products.count
        @pagy, @records = pagy(current_buyer.products.order("name ASC, cost ASC"))
      else
          redirect_to "/buyers/sign_in"
      end
    end

    def add_favorite
      if buyer_signed_in?
        @to_save = current_buyer.favorites.build(product_id: params[:id] ) 
        if @to_save.save
          flash.notice = "Favorite Added"
          redirect_to request.referer
        else
          @error = @to_save.errors.full_messages.first
          flash.alert =  @error
          redirect_to request.referer
        end
      else
          redirect_to "/buyers/sign_in"
      end
    end

    def remove_favorite
      if buyer_signed_in?
        current_buyer.favorites.where(product_id: params[:id]).destroy_all
        flash.notice = "Favorite Removed"
        redirect_to request.referer
      else
          redirect_to "/buyers/sign_in"
      end
    end

    private
    # Only allow a list of trusted parameters through.
    def favorite_params
      params.require(:favorite).permit(:product_id)
    end
  end

