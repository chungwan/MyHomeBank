class RemoveUserIndices < ActiveRecord::Migration
  def change
        remove_index :parents, :user_id
         remove_index :kids, :user_id
      end
end
