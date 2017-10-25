class Order < ApplicationRecord
  belongs_to :payment_type
  belongs_to :customer
  has_many :product_orders
  has_many :products, through: :product_orders
end
