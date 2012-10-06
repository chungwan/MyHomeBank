class Transaction < ActiveRecord::Base
  belongs_to :account
  attr_accessible :amount, :bal_begin, :bal_end, :day, :earned
  
  before_create :initialize_transaction
   def initialize_transaction
     self.day = 0
     self.bal_end = 0
   end
  
  
end
