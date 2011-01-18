class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :place_id
      t.string :autor
      t.string :email
      t.text :tekst

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
