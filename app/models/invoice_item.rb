class InvoiceItem < ActiveRecord::Base
  attr_accessible :invoice_id, :price, :quantity
end
