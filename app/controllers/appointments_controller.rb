class AppointmentsController < ApplicationController
	def new
		@appointment = current_user.schedule.appointments.build
		if params[:patient_id]
			@appointment.patient = Patient.find(params[:patient_id])
		end
	end

	def create
		@appointment = current_user.schedule.appointments.build(params[:appointment])
		@appointment.patient_id = params[:patient_id]
		@appointment.save!
		redirect_to :root
	end

	def update
		@appointment = Appointment.find(params[:id])
		@appointment.update_attributes(params[:appointment])
		redirect_to current_user, :selected_date => @appointment.date
	end

	def delete
	end

	def edit
		@appointment = Appointment.find(params[:id])
	end

end
