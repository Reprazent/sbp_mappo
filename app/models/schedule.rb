class Schedule < ActiveRecord::Base
	belongs_to :user
	has_many :workdays
	has_many :appointments
end
