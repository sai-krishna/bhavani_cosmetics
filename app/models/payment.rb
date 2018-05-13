class Payment < ApplicationRecord
  belongs_to :invoice
  validates :amount, :issue_date, presence: true
  validates :amount, numericality: { greater_than: 0}, if: :amount?
end