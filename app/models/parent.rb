class Parent < ActiveRecord::Base
  attr_accessible :p_email, :p_name, :bank_attributes, :bank_id
  
  has_one :bank, :dependent => :destroy
  has_many :kids, :dependent => :destroy
  has_many :accounts, :through => :kids
  
  accepts_nested_attributes_for :bank
end
