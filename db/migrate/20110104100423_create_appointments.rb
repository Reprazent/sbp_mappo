class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.references :schedule
      t.references :patient
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :state
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
