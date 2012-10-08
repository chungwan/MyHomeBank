class AddLastTxIdToAccounts < ActiveRecord::Migration
  def change
       add_column :accounts, :last_transaction_id, :integer
    end
end
