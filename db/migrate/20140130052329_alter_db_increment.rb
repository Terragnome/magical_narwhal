class AlterDbIncrement < ActiveRecord::Migration
  def up
      execute <<-SQL
            SET @@auto_increment_increment=1;
      SQL
    end
end
