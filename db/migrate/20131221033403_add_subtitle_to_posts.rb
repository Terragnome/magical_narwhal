class AddSubtitleToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :subtitle, :string
  end
  
  def down
    remove_column :posts, :subtitle
  end
end
