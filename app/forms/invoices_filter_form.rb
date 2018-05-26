class InvoicesFilterForm < BaseForm
  attr_accessor :bill_number

  def initialize(params)
    super(params)
  end

  def fetch_invoices
    if bill_number
      Invoice.where(bill_number: bill_number)
    else
      Invoice
    end
  end
end
