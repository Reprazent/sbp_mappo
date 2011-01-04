class AddUserToPatient < ActiveRecord::Migration
  def self.up
    add_column :patients, :user, :reference
  end

  def self.down
    remove_column :patients, :user
  end
end
