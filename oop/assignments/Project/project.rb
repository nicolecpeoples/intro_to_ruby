class Project

	def initialize(name, description)
		@project_name = name
		@project_description = description
		puts "I initailized a new project!"
	end

	def name 
		puts "Name: #{@project_name}"
	end 

	def elevator_pitch
		puts "Name: #{@project_name}"
		puts "Description: #{@project_description}"
		self
	end
end

project1 = Project.new("ruby", "learning how to implement classes and stuff")
project1.name
project1.elevator_pitch