class AddCategoryToAnnouncements < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :category, :string
  end
end
