class AddFbToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :fb, :string
  end
end
