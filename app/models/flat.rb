class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :number_of_guests, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  validates :description, length: { minimum: 10, maximum: 500 }
end
