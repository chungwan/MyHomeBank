class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :ac_name
      t.references :bank
      t.references :kid

      t.timestamps
    end
    add_index :accounts, :bank_id
    add_index :accounts, :kid_id
  end
end
