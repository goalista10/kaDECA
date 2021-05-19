class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.string :availability
      t.string :pic_url
      t.text :description
      t.integer :seller_id

      t.timestamps
    end
  end
end
