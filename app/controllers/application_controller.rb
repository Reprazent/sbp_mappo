class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :authenticate_user!, :set_selected_date
	
	private
	def set_selected_date
		if !params[:selected_date]
			params[:selected_date] = Time.now.to_s
		end
	end
	
end
