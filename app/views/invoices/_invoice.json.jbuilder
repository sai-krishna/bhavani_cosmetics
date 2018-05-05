json.extract! invoice, :id, :bill_number, :bill_date, :total_amount, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
