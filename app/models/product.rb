class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :seller_id, case_sensitive: false }
  validates :cost, presence: true
  validates :description, presence: true
  belongs_to :seller
  has_one_attached :avatar
  validates :avatar, presence: true

  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

  def set_defaults
    self.featured  ||= 1
  end
end
