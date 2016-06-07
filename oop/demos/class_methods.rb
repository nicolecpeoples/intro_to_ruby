#class methods are declared the same way as normal methods, except that they are prefixed by self, or the class name followed by a period. They are executed at the Class level and may  be called without an object instance. 
class MyClass
	def some_method
		puts 'something'
	end
end

something = MyClass.new
something.some_method  #+> something

class User

	attr_accessor :first_name, :last_name
	def initialize(f_name, l_name)
		@first_name = f_name
		@last_name = l_name
	end
	def my_name
		puts "I am #{@first_name} #{@last_name}"
	end
end

user1 = User.new("Frobe", "Dryant")

user1.my_name