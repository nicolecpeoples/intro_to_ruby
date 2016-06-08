require_relative 'human'

class Wizard < Human

	def initialize
		@intelligence = 25
		@health = 50
		puts "I'm a Wizard"
	end

	def heal
		@health += 10
		
	end
	def fireball(target)
		attack(target)
		target.health -= 20
		
	end
end