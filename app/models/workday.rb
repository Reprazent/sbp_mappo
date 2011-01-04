class Workday < ActiveRecord::Base
	belongs_to :schedule
	
	def to_s
		"#{self.start_time.strftime('%H:%m')} - #{self.end_time.strftime('%H:%m')}"
	end

	def day_name
		case self.day_of_week
		when 0
			"Sunday"
		when 1
			"Monday"
		when 2
			"Tuesday"
		when 3
			"Wensday"
		when 4
			"Thursday"
		when 5
			"Friday"
		when 6
			"Saturday"
		end
	end
end
