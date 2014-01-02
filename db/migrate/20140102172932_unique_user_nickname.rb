class UniqueUserNickname < ActiveRecord::Migration
  def up
    remove_index :users, :nickname
    add_index :users, :nickname, :unique=>true    

    change_column :users, :nickname, :string, :null=>false
  end
  
  def down
    remove_index :users, :nickname
    add_index :users, :nickname

    change_column :users, :nickname, :string, :null=>true
  end
end
