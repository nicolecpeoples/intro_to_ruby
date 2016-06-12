class SayController < ApplicationController
	def index
		render :text => "What do you want me to say???"
	end

	def hello
		render :text => "Saying Hello"
	end 

	def show
		if params[:name] == "michael"
			redirect_to '/say/hello/joe'
		else
			@name = params[:name]
		end
	end
end
