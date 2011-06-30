
class CreateStoredFiles < ActiveRecord::Migration
  def self.up
    # ActiveRecord::Base.logger = Logger.new(STDOUT)
    create_table :stored_files do |t|
      t.column :filename, :string, :null => false
      t.column :content, :binary, :null => false
      t.column :mime_type, :string
      t.timestamps
    end
    add_index :stored_files, :filename, :unique => true
  end

  def self.down
    drop_table :stored_files
  end
end

