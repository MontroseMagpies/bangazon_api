class Product < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
end
