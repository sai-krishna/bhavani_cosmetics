json.extract! payment, :id, :issue_date, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
