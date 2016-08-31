module CalendarHelper
	
	# ToDo
	# Start Date
	# End Date
	# Add ECA Rotation Schedule/Time Blocks
	# Determin Intervals (>= 6 weeks)

	def no_school_check(single_event)
		no_school = single_event.include?("NO SCHOOL") || single_event.include?("No School") || single_event.include?("no school")
		holiday = single_event.include?("holiday") || single_event.include?("Holiday")
		take_a_break =  single_event.include?("break") || single_event.include?("Break")
		no_school || holiday || take_a_break
	end

end
