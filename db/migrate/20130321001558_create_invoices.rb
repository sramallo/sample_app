class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_type
      t.integer :branch_id
      t.integer :number
      t.decimal :total, precision: 5, scale:  2
      t.integer :client_id

      t.timestamps
    end
  end
end
