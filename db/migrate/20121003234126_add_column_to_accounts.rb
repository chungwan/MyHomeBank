class AddColumnToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :bal_current, :float
    add_column :accounts, :bal_last, :float
    add_column :accounts, :last_tx, :float
    add_column :accounts, :rate, :float    
    add_column :accounts, :int_eanred, :float      
    add_column :accounts, :time, :integer    
  end
end
