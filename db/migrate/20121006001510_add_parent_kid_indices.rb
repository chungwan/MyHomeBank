class AddParentKidIndices < ActiveRecord::Migration
  def change
     add_column :kids, :user_id, :intger
     add_column :parents, :user_id, :intger
     add_index "kids", ["user_id"], :name => "index_kids_on_user_id"
     add_index "parents", ["user_id"], :name => "index_parents_on_user_id"
  end


end
