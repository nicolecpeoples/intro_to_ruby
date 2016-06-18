class Mathdojo
	attr_accessor :result

	def initialize
		@result = 0
	end

	def add (*args)
		@result += args.flatten.inject(:+)
		return self
	end

	def subtract(*args)
		@result -= args.flatten.inject(:+)
		return self
	end

	def multiply_by_the_sum(*args)
		@result *= args.flatten.inject(:+)
		return self
	end

	def reset
		@result = 1
		return self
	end

	def result
		 @result
	end

end