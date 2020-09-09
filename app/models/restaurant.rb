class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian spanish).freeze

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
