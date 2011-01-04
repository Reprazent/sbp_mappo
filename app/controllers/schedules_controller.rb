class SchedulesController < ApplicationController


	# GET /schedules/new
	# GET /schedules/new.xml
	def new
		@schedule = Schedule.new
		0.upto 6 do |n|
			@schedule.workdays.build(:day_of_week => n)
		end

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @schedule }
		end
	end

	# GET /schedules/1/edit
	def edit
		@schedule = Schedule.find(params[:id])
	end

	# POST /schedules
	# POST /schedules.xml
	def create
		@schedule = Schedule.new(params[:schedule])
		current_user.schedule = @schedule

		respond_to do |format|
			if current_user.save
				format.html { redirect_to([current_user], :notice => 'Schedule was successfully created.') }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @schedule.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /schedules/1
	# PUT /schedules/1.xml
	def update
		@schedule = Schedule.find(params[:id])

		respond_to do |format|
			if @schedule.update_attributes(params[:schedule])
				format.html { redirect_to([current_user, @schedule], :notice => 'Schedule was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @schedule.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	def next
		if params[:selected_date]
			params[:selected_date] = Time.parse(params[:selected_date]) + 7.days
		else
			params[:selected_date] = Time.now
		end
		render "users/show"
	end
	def previous
		if params[:selected_date]
			params[:selected_date] = Time.parse(params[:selected_date]) - 7.days
		else
			params[:selected_date] = Time.now
		end
		render "users/show"
	end


end
