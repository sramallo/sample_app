class Invoice < ActiveRecord::Base
  attr_accessible :branch_id, :client_id, :number, :type

  belongs_to :branch
end
