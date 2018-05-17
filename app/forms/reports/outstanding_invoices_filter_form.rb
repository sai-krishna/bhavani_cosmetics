class Reports::OutstandingInvoicesFilterForm < BaseForm
  attr_accessor :retailer_id

  def initialize(params)
    super(params)
  end

  def fetch_outstanding_invoices
  end 
end