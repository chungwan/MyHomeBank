class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :k_name
      t.string :k_email
      t.references :parent

      t.timestamps
    end
    add_index :kids, :parent_id
  end
end
