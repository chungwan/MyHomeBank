class Bank < ActiveRecord::Base
  belongs_to :parent
  has_many :accounts, :dependent => :destroy
 
  attr_accessible :b_name, :parent_id
end
