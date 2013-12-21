class SplitCreatedAtAndActiveIndexOnPosts < ActiveRecord::Migration
  def up
    remove_index :posts, [:created_at, :active]
    add_index :posts, :active
    add_index :posts, :created_at
  end

  def down
    remove_index :posts, :active
    remove_index :posts, :created_at
    add_index :posts, [:created_at, :active]
  end
end
