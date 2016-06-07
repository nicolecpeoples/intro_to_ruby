#general add subtract
# class MathDojo
# 	@@sum = 0
# 	def add(a, b= 0)

# 		@@sum += (a+ b)
# 		self
# 	end

# 	def subtract(a,b=0)
# 		@@sum -= (a+b)
# 		self
# 	end

# 	def displaySum
# 		puts "#{@@sum}"
# 	end
# end

#MathDojo.new.add(10).subtract(3, 5).add(4,6).displaySum
#MathDojo.new.add(2).add(2,5).subtract(3,2).displaySum

#array addition
# class MathDojo
# 	@@sum = 0
# 	def add(*args)
# 		@total = 0
# 		args.each do |x|
# 			if x.class ==Array
# 				x.each do |y|
# 					@total += y

# 				end
# 			else
# 				@total += x
# 				puts @total
				
# 			end
			
# 		end
# 		@@sum += @total
# 		self
# 	end

# 	def subtract(*args)
# 		@total = 0
# 		args.each do |x|
# 			if x.class == Array
# 				x.each do |y|
# 					@total += y
					
# 				end
# 			else
# 				@total += x
# 			end
# 		end
# 		@@sum -= @total
# 		self
# 	end

# 	def displaySum
# 		puts "#{@@sum}"
# 	end
# end

# # MathDojo.new.add([5,3], 6).subtract(5, [6,7,8]).displaySum
# MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).displaySum

# class Testing
# @@sum = 0
# 	def paramsTest(*args)

# 		puts  "I want to test if args are working #{args}"
# 		puts args.to_s.class 
# 		puts "#{args}"
# 		args.each do |x|
# 			puts x.class
# 			x.each do |y|
# 				puts @@sum += y
# 			end
# 		end
# 	end
# end

# Testing.new.paramsTest([5, 7, 9])

#coding dojos way of doing it. Note the accessor and initializing it. Cleans up the code a bit. They also use the ruby method flatten and reduce. 
class MathDojo
	attr_accessor :result

	def initialize
		@result = 0
	end

	def add(*arg)
		if arg.class == Array
			@result += arg.flatten.reduce(:+)
		else
			@result += arg
		end
		self
	end

	def subtract(*arg)
		if arg.class == Array
			@result -= arg.flatten.reduce(:+)
		else
			@result -= arg
		end
		self
	end
end

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result