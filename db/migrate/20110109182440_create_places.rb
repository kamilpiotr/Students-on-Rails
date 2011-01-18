class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :nazwa
      t.string :wojewodztwo
      t.string :miasto
      t.string :ulica
      t.string :autor
      t.text :opis

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end


	def self.up
      add_column :places, :avatar_file_name,    :string
      add_column :places, :avatar_content_type, :string
      add_column :places, :avatar_file_size,    :integer
      add_column :places, :avatar_updated_at,   :datetime
    end

    def self.down
      remove_column :places, :avatar_file_name
      remove_column :places, :avatar_content_type
      remove_column :places, :avatar_file_size
      remove_column :places, :avatar_updated_at
    end
end
