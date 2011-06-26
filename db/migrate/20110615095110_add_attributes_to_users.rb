class AddAttributesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :street, :string
    add_column :users, :ort, :string
    add_column :users, :zip, :integer
    add_column :users, :forename, :string
  end

  def self.down
    remove_column :users, :forename
    remove_column :users, :zip
    remove_column :users, :ort
    remove_column :users, :street
  end
end
