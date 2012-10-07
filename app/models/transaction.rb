class Transaction < ActiveRecord::Base
  belongs_to :account
  attr_accessible :amount, :bal_begin, :bal_end, :day, :earned, :perform_transaction, :account_id, :account_attributes
  
  before_create :initialize_tx
   def initialize_tx
     self.day = 0
     self.bal_begin = 0

   end
  
   attr_accessor :perform_transaction
   def perform_transaction=(amt)
#     self.bal_begin = self.account.bal_current
#     self.earned = self.account.bal_last * self.account.rate / 100
     self.amount = amt
#     self.bal_end = self.bal_begin + self.earned + self.amount
 #    self.day = self.day + 1
   end
  
  
  
end
