class AddTitleToAppointment < ActiveRecord::Migration
  def self.up
    add_column :appointments, :title, :string
  end

  def self.down
    remove_column :appointments, :title
  end
end
