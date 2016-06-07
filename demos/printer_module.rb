#Enumerable is a module and is a superclass of class
#printer is the module with a function to print each element that we can now use in other classes
module Printer
	def print_each_element
		for i in 0...self.length
			puts self[i]
		end
	end
end