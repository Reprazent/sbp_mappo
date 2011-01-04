class CreateWorkdays < ActiveRecord::Migration
  def self.up
    create_table :workdays do |t|
      t.references :schedule
      t.integer :day_of_week
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :workdays
  end
end
