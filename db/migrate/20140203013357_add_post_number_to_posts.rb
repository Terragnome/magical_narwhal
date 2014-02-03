class AddPostNumberToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :post_id, :int
  end

  def down
    remove_column :posts, :post_id
  end
end
