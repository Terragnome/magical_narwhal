class AddUserIcon < ActiveRecord::Migration
  def up
    add_column :users, :icon, :string
  end
  
  def down
    remove_column :users, :icon
  end
end
