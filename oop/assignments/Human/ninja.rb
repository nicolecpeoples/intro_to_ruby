require_relative 'human'

class Ninja < Human
	def initialize
		@stealth = 175
		puts "I'm a ninja"
	end
	def steal(target)
		attack(target)
		@health += 10
	end
	def get_away 
		@health -= 15
	end
end