class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 1000 }
end
