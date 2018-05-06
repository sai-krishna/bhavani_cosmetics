class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :invoice_id
      t.float :amount
      t.date :issue_date
    end
  end
end
