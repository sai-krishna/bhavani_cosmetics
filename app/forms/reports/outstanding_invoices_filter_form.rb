class Reports::OutstandingInvoicesFilterForm < BaseForm
  attr_accessor :retailer_id

  def initialize(params)
    super(params)
  end

  def fetch_outstanding_invoices
    invoices = Invoice
      .joins(:retailer)
      .joins("LEFT OUTER JOIN payments ON invoices.id = payments.invoice_id")
      .select('invoices.*, retailers.name as retailer_name, 
        COALESCE(SUM(payments.amount),0) as payments_amount, 
        (total_amount - COALESCE(SUM(payments.amount),0)) as balance')
      .group('invoices.id')
      .having('balance != 0')

    if retailer_id.present?
      invoices = invoices.where(retailers: {id: retailer_id})
    end

    invoices
  end
end
