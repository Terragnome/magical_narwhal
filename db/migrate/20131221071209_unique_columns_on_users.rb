class UniqueColumnsOnUsers < ActiveRecord::Migration
  def up
    remove_index :users, :alias
    add_index :users, :alias, :unique=>true

    remove_index :users, :email
    add_index :users, :email, :unique=>true

    remove_index :users, :name
    add_index :users, :name, :unique=>true
  end

  def down
    remove_index :users, :alias
    add_index :users, :alias
    
    remove_index :users, :email
    add_index :users, :email
    
    remove_index :users, :name
    add_index :users, :name
  end
end
