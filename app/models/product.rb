class Product < ActiveRecord::Base
  validates :name, :price_cents, presence: true
  validates :price_cents, numericality: {
    greater_than_or_equal_to: 0
  }
end
