
class SolarSystem
	attr_accessor :name, :planets

	def initialize(name="Solar System")
		@name = "Solar System"
 		@planets = ['Earth', 'Mars', 'Jupiter', 'Saturn']
	end

	def count_planets
		 @planets.count
		
	end

	def super_nova
		@planets.clear
	end
end

class Planet < SolarSystem
	attr_accessor :name, :description, :population

	def add_planets(planet_name)
		@planets.push(planet_name)
	end	
end

