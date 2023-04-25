class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_or_equal_to: 0 }
  validatable :measurement_unit, presence: true, numericality: { greater_or_equal_to: 0 }
  validates :quantity, numericality: { greater_or_equal_to: 0 }
end
