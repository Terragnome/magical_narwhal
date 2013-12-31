class AddUserTwitterId < ActiveRecord::Migration
  def up
    add_column :users, :twitter_id, :string
  end
  
  def down
    remove_column :users, :twitter_id
  end
end
