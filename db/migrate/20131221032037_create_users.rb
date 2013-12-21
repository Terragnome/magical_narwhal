class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name, :null=>false
      t.string :email, :null=>false
      t.string :alias
      t.datetime :created_at
      t.datetime :last_login_at
    end

    add_index :users, :name
    add_index :users, :email
    add_index :users, :alias
  end
  
  def down
    drop_table :users
  end
end