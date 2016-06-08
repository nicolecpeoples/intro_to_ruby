require_relative 'solar_system'

RSpec.describe Planet do
	describe 'attributes' do
		before do 
			@planet = Planet.new
			@planet.name = "Pluto"
			@planet.description = "don't tell me I'm not a planet"
			@planet.population = 0
		end

		it 'has a getter and setter for the name, description, and population attributes' do
			expect(@planet).to have_attributes(:name =>"Pluto")
			expect(@planet).to have_attributes(:description => "don't tell me I'm not a planet")
			expect(@planet).to have_attributes(:population => 0)
		end
	
	end

	describe 'behavior' do
		before do
			@planet = Planet.new

		end

		it 'should only add a planet from the planet class' do
			@planet.name = "Pluto"
			@planet.planets = @planet.name
			expect(@planet.planets).to eq("Pluto")
			
		end
	end
end

RSpec.describe SolarSystem do
	before do 
		@system = SolarSystem.new
	end

	it "should be initialized with a name, if not its default name should be 'Solar System'" do
		expect(@system.name).to eq("Solar System")
		@system.name = "gemini"
		expect(@system.name).to eq("gemini")

	end

	it 'should contain a list of all planets' do
		expect(@system.planets).to match_array(['Earth', 'Mars', 'Jupiter', 'Saturn'])
	end

	describe 'behavior' do 
		before do
			@solarSystem = SolarSystem.new
		end
		it "should count how many planets are in the Solar System." do
			expect(@solarSystem.count_planets).to eq(4)
		end

		it "should have a method called Super Nova that destroys all of the planets in it" do
			@solarSystem.super_nova
			expect(@solarSystem.planets.empty?).to eq(true)
		end
	end

end



