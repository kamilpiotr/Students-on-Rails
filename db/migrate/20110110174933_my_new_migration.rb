class MyNewMigration < ActiveRecord::Migration
   def self.up
    remove_column :comments, :post_id
    add_column :comments, :place_id, :integer
  end

  def self.down
  end
end
