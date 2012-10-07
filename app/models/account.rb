class Account < ActiveRecord::Base
  belongs_to :bank
  belongs_to :kid
  has_many :transactions,:dependent => :destroy
  
  attr_accessible :ac_name, :rate, :bal_current, :bal_last, :int_earned, :time, :last_tx, :kid_id, :bank_id, :make_transaction, :transaction_id, :transactions_attributes, :perform_transaction

  accepts_nested_attributes_for :transactions
 
 before_create :initialize_account
 def initialize_account
   self.time = 0
   self.bal_last = 0
    self.int_eanred = 0
    self.last_tx = 0
    self.bal_current = 0
 end
 
# after_save :record_transaction
# def record_transaction
#   self.build_transaction(:account_id=>params[:account_id])
#   self.transaction.day = self.time
#   self.transaction.bal_begin = self.bal_last
#   self.transaction.earned = self.int_eanred
#   self.transaction.amount = self.last_tx
#   self.transaction.bal_end = self.bal_current
# end

  
 
 
 
 attr_accessor :make_transaction
 def make_transaction=(amount)
   self.bal_last = self.bal_current
   self.int_eanred = self.bal_last * self.rate / 100
   self.last_tx = amount
   self.bal_current = self.bal_last + self.int_eanred + self.last_tx
   self.time = self.time + 1
 end


 
 
end
