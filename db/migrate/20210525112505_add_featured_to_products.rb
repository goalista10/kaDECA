class AddFeaturedToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :featured, :integer
  end
end
