class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.integer :invoice_id
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
