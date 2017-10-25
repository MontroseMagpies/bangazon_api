class Product < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  has_many :product_orders
  has_many :orders, through: :product_orders
end
