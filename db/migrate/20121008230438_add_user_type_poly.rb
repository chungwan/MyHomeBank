class AddUserTypePoly < ActiveRecord::Migration
  def change
        add_column :users, :person_type, :string
        add_column :users, :person_id, :integer
        add_index :users, [:person_id, :person_type]
     end
end
