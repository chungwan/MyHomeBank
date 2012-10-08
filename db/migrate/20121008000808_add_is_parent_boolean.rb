class AddIsParentBoolean < ActiveRecord::Migration
  def change
       add_column :users, :is_parent, :boolean
    end
end
