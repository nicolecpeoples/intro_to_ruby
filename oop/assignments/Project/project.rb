class Project
	attr_accessor :name, :description, :team_member
	def initialize(name, description)
		@name = name
		@description = description

	end

	def nameOfProject
		puts "Name: #{@name}"
	end 

	def elevator_pitch
		"#{@name}, #{@description}"
		
	end

	def add_to_team(member_name)
		@team_member = member_name
	end
end

# class Project
#   attr_accessor :name, :description
#   def initialize name, description
#     @name = name
#     @description = description
#   end

#   def elevator_pitch
#     "#{@name}, #{@description}"
#   end
# end
# project1 = Project.new("ruby", "learning how to implement classes and stuff")
# project1.name
# project1.elevator_pitch