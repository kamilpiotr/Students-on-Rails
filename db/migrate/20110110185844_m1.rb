class M1 < ActiveRecord::Migration
  def self.up
  drop_table :places
  drop_table :comments
  end

  def self.down
  end
end
