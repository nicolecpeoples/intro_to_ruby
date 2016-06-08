class Project
	attr_accessor :name, :description

	def initialize 
	    @name = ""
	    @description = ""
	  end

	def nameOfProject
		puts "Name: #{@name}"
	end 

	def elevator_pitch
		"#{@name}, #{@description}"
		
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