class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :bill_number
      t.date :bill_date
      t.float :total_amount

      t.timestamps
    end
  end
end
