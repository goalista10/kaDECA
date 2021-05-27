class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :buyer_id
      t.integer :product_id

      t.timestamps
    end
  end
end
