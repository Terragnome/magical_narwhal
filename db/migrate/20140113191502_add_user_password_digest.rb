class AddUserPasswordDigest < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string, :null=>false
  end

  def down
    remove_column :users, :password_digest
  end
end
