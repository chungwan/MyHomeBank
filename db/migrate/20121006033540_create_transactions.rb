class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :account
      t.integer :day
      t.float :amount
      t.float :earned
      t.float :bal_begin
      t.float :bal_end

      t.timestamps
    end
    add_index :transactions, :account_id
  end
end
