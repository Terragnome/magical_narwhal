class UserAliasToNickname < ActiveRecord::Migration
  def up
    rename_column :users, :alias, :nickname
  end

  def down
    rename_column :users, :nickname, :alias
  end
end
