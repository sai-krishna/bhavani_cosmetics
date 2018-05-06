class Invoice < ApplicationRecord
  belongs_to :retailer
  has_many :payments
end
