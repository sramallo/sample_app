class AddLastInvoiceNumberToBranch < ActiveRecord::Migration
  def change
    add_column :branches, :last_invoice_f,  :integer
    add_column :branches, :last_invoice_nc, :integer
    add_column :branches, :last_invoice_nd, :integer
  end
end
