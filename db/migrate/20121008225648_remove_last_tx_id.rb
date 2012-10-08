class RemoveLastTxId < ActiveRecord::Migration
 
 def change
      remove_column :accounts, :last_transaction_id
    end
end
