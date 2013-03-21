class Invoice < ActiveRecord::Base
  attr_accessible :branch_id, :client_id, :invoice_type

  belongs_to :branch

  def self.types
    ['F', 'NC', 'ND']
  end

end
