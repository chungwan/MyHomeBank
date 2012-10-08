class Transaction < ActiveRecord::Base
  belongs_to :account
  attr_accessible :amount, :bal_begin, :bal_end, :day, :earned, :perform_transaction, :account_id, :rate, :bal_current, :account_attributes
  

  
   attr_accessor :perform_transaction
   def perform_transaction=(amt)
     self.amount = amt
   end
  
  
  
end
