class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: { scope: :seller_id ,:case_sensitive => false }
    validates :cost, presence: true
    validates :description, presence: true
    belongs_to :seller
    has_one_attached :avatar 
    validates :avatar, presence: true

    before_save :default_values
    def default_values
        self.featured = 0 if self.featured.nil? 
    end
end
