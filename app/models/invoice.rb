class Invoice < ActiveRecord::Base
  attr_accessible :branch_id, :client_id, :invoice_type

  belongs_to :branch
  belongs_to :client

  has_many :invoice_items

  validates_associated  :branch, :client
  validates_presence_of :branch, :client, :invoice_type
  validates_inclusion_of :invoice_type, in: lambda {|i| Invoice.types }
  before_validation :build_number
  before_create     :unique_number?

  def self.types
    ['F', 'NC', 'ND']
  end

  def build_number
    branch.lock!
    self.number = branch.build_last_number(self.invoice_type)
  end

  def unique_number?
    Invoice.where(number: number, branch_id: branch_id, invoice_type: invoice_type).count == 0
  end

end
