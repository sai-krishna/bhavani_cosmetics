class AddRetailerIdToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :retailer_id, :integer
  end
end
