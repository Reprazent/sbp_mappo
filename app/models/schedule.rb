class Schedule < ActiveRecord::Base
	belongs_to :user
	has_many :workdays
	has_many :appointments
	accepts_nested_attributes_for :workdays, :allow_destroy => true, :reject_if => :all_blank
end
