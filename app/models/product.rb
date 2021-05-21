class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: { scope: :seller_id ,:case_sensitive => false }
    validates :cost, presence: true
    validates :pic_url, presence: true
    validates :description, presence: true
    belongs_to :seller
end
