class Invoice < ApplicationRecord
  belongs_to :retailer
  has_many :payments

  validates :retailer, :bill_number, :bill_date, :total_amount, presence: true
end
