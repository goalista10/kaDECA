class RemovePictureFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :pic_url, :string
    drop_table :features
  end
end
