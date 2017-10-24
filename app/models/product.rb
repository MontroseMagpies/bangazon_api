class Product < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  has_many :products_orders
  has_many :orders, through: :products_orders
end
