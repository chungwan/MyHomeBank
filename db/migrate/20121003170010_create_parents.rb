class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :p_name
      t.string :p_email

      t.timestamps
    end
  end
end
