class Reports::OutstandingInvoicesController < ApplicationController
  def index
    @outstanding_invoices_filter_form = Reports::OutstandingInvoicesFilterForm.new(filter_params.to_h)
    @invoices = @outstanding_invoices_filter_form.fetch_outstanding_invoices
  end

  private

  def filter_params
    params.fetch(:outstanding_invoices_filter_form, {}).permit(:retailer_id)
  end
end