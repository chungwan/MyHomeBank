class Account < ActiveRecord::Base
  belongs_to :bank
  belongs_to :kid
  attr_accessible :ac_name, :rate, :bal_current, :bal_last, :int_earned, :time, :last_tx, :kid_id, :bank_id, :make_transaction
  has_many :transactions,:dependent => :destroy


 
 before_create :initialize_time_to_zero
 def initialize_time_to_zero
   self.time = 0
 end
 
 attr_accessor :make_transaction
 def make_transaction=(amount)
   self.bal_last = self.bal_current
   self.int_eanred = self.bal_last * self.rate / 100
   self.last_tx = amount
   self.bal_current = self.bal_last + self.int_eanred + self.last_tx
   self.time = self.time + 1
   self.bal_last.round(2)
   self.bal_current.round(2)
   self.int_eanred.round(2)
 end
 
 
end
