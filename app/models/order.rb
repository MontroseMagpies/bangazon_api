class Order < ApplicationRecord
  belongs_to :payment_type
  belongs_to :customer
end
