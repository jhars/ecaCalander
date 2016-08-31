class CalendarController < ApplicationController
	require 'date'
	require 'icalendar'
	include CalendarHelper

  def index
  	cal = Icalendar::Parser.new(File.read File.join(File.dirname(__FILE__), '../../public/calendars', 'chapel_hill')).parse
  	events = cal.first.events
  	
  	events.each do |event|
  		single_event = event.summary
  		if no_school_check(single_event)
  			if event.dtstart > DateTime.civil(2016, 8, 30, 8, 30)
          puts "#{event.dtstart} #{single_event}"
        end

  		end
  	end
  end

  def show
  end
end
