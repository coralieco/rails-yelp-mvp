class Restaurant < ApplicationRecord

  CATEGORIES = %w(chinese italian japanese french belgian)

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: CATEGORIES,
      message: "%{value} is not a valid category" }

end
