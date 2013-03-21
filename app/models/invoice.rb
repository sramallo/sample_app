class Invoice < ActiveRecord::Base
  attr_accessible :branch_id, :client_id, :invoice_type

  belongs_to :branch
  belongs_to :client

  has_many :invoice_items

  validates_associated  :branch, :client
  validates_presence_of :branch, :client

  def self.types
    ['F', 'NC', 'ND']
  end

end
