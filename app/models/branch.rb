class Branch < ActiveRecord::Base
  attr_accessible :name

  has_many :invoices

  def build_last_number(type)
    field = "last_invoice_#{type.downcase}"

    increment! field, 1
    read_attribute field
  end

end
