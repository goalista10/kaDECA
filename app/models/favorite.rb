class Favorite < ApplicationRecord
    validates :product_id, uniqueness: { scope: :buyer_id  }
    belongs_to :buyer
    belongs_to :product
end
