class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
    respond_to do |format|
      format.js
    end
  end

  def create
  end
end