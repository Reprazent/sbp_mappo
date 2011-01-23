class Schedule < ActiveRecord::Base
	belongs_to :user
	has_many :workdays
	has_many :appointments
	accepts_nested_attributes_for :workdays, :allow_destroy => true, :reject_if => :all_blank
	
	def busy?(date)
		appointments.planned.each do |appointment|
			if appointment.date.strftime("%a %d %b %Y") == date.strftime("%a %d %b %Y") 
				if (date.hour * 60 + date.min >= appointment.start_time.hour * 60 + appointment.start_time.min) && (date.hour * 60 + date.min <= appointment.end_time.hour * 60 + appointment.end_time.min)
						return appointment
				end
			end
		end
		false
	end
end
