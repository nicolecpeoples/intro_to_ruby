class Human
	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
		puts "You have initailized a human!"
	end

	def attack(target)
		if target.class.ancestors.include?(Human)
			@health -= 10
		else
			@health += 5
		end
		puts target.class.ancestors
		self
	end

	def displayHealth
		puts self.health
		self
	end
end

user1 = Human.new
user2 = Human.new
puts user1.class.ancestors
user2.attack(user1).displayHealth