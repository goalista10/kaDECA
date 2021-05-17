class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.float :cost
      t.string :url

      t.timestamps
    end
  end
end
