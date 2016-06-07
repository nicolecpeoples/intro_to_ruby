require_relative 'human'

class Samurai < Human
	@counter = 0
	class << self
		attr_accessor :counter
	end
	def initialize
		@health = 200
		puts "I'm a samurai"
		self.class.counter += 1
	end

	def death_blow(target)
		attack(target)
		self
	end

	def meditate
		@health = 200
		puts "You meditated and now you are back to full health! "
		self
	end

	def how_many
		puts "There are #{self.class.counter} samurais"
		self
	end
end

sam1 = Samurai.new.displayHealth
sam2 = Samurai.new.how_many
sam1.attack(sam2).attack(sam2).displayHealth

# sam1.meditate.displayHealth
sam2.displayHealth