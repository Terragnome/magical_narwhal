class RemovePostSubtitles < ActiveRecord::Migration
  def up
    remove_column :posts, :subtitle
  end
  
  def down
    add_column :posts, :subtitle
  end
end
