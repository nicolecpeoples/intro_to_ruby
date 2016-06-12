class TimesController < ApplicationController
	@@count = 0
	def index
		@@count +=1
		render :text => "You've been here #{@@count} times"
	end

	def restart
		@@count = 0
		render :text => "Destroyed this session"
	end
end
