class Appointment < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :patient

	scope :waiting, :conditions => {:date => nil}
	scope :planned, :conditions => ["date IS NOT NULL"]
end
