class ProductController < ApplicationController
    def create
        @create_product = current_seller.products.build(product_params)
        if @create_product.save
            flash.notice = "Category created"
        else
            @error = @create_product.errors.full_messages.first
            if @error.include? "blank"
                flash.notice = "Category name can't be blank"
            else
                flash.notice = "Category name is redundant"
            end
        end
        redirect_to "/"
    end

    private
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name,:cost,:availability,:description,:seller_id)
    end
  end