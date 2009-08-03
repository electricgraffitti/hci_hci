class AddColumnToEmployee < ActiveRecord::Migration
  def self.up
    add_column :employees, :email, :string
  end

  def self.down
    remove_column :employees, :email
  end
end
