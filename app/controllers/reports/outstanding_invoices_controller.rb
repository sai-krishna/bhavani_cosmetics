class Reports::OutstandingInvoicesController < ApplicationController
  def index
    @outstanding_invoices_filter_form = Reports::OutstandingInvoicesFilterForm.new(filter_params.to_h)
    @invoices = @outstanding_invoices_filter_form
      .fetch_outstanding_invoices
      .page(params[:page] || 1)
      .per(params[:per] || 30)
    render :print, layout: false if params[:print]
  end

  private

  def filter_params
    params.fetch(:reports_outstanding_invoices_filter_form, {}).permit(:retailer_id)
  end
end
