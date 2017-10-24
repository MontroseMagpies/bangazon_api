class Product < ApplicationRecord
  belongs_to :Customer
  belongs_to :ProductType
end
