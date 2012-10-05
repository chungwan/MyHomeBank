class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :b_name
      t.references :parent

      t.timestamps
    end
    add_index :banks, :parent_id
  end
end
