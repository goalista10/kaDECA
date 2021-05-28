class ProductController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @seller = Product.find(params[:id]).seller
    render 'product/details'
  end

  def create
    @create_product = current_seller.products.build(product_params)
    if @create_product.save
      flash.notice = 'Product created'
      redirect_to '/sellers/products'
    else
      @error = @create_product.errors.full_messages.first
      flash.alert = @error
      redirect_to '/sellers/add_product'
    end
  end

  def destroy
    @to_be_deleted = current_seller.products.find(params[:id])
    @to_be_deleted.destroy
    flash.notice = 'Product deleted'
    redirect_to '/sellers/products'
  end

  def edit
    @to_be_updated = current_seller.products.find(params[:id])
    render 'product/edit'
  end

  def update
    @update_product = current_seller.products.find(params[:id])
    if @update_product.update(product_params)
      flash.notice = 'Product updated'
      redirect_to '/sellers/products'
    else
      @error = @update_product.errors.full_messages.first
      flash.alert = @error
      redirect_to edit_product_path(params[:id])
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :cost, :category, :availability, :pic_url, :description, :seller_id, :avatar)
  end
end
