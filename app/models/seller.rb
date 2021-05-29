# frozen_string_literal: true

class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :products, dependent: :destroy
  validates :name, presence: true
  validates :contact, presence: true
  validates :block, presence: true
  validates :lot, presence: true
  validates :fb, presence: true
end
