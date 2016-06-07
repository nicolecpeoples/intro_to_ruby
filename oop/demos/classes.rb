#an instance of a class is an object

# class User
# 	#attribute  (Think of attributes as columns in a database and each row as an instance of the class User.)
# 	@first_name
# end

# class User
# 	#add getters and setters to access attributes
# 	def first_name
# 		@first_name
# 	end
# end

# class User
# 	#creates a getter method
# 	attr_reader  

# 	#creates a setter method
# 	attr_writer
# end

class User
	#getter and setter method
	attr_accessor :first_name, :last_name
	def initialize(f_name, l_name)
		@first_name = f_name
		@last_name = l_name
	end
end
user1 = User.new("Frobe", "Bryant")



puts user1.first_name + user1.last_name