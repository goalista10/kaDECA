class AddNameToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :name, :string
    add_column :sellers, :contact, :string
    add_column :sellers, :blk, :integer
    add_column :sellers, :lot, :integer
  end
end
