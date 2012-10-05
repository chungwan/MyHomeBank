class Kid < ActiveRecord::Base
  belongs_to :parent
  has_one :account,:dependent => :destroy
  has_one :bank, :through => :account
  
  attr_accessible :k_email, :k_name, :parent_id, :bank_id, :account_attributes, :time, :make_transaction
  
  accepts_nested_attributes_for :account
  
  
end
