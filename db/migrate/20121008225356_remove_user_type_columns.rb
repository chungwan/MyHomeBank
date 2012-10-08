class RemoveUserTypeColumns < ActiveRecord::Migration
  def change
      remove_column :users, :user_type, :is_parent
    end
end
