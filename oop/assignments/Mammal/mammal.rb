class Mammal
  attr_accessor :alive, :health
  def initialize
    @alive = true
    @health = 150
    puts 'I am alive!'
    self
  end
  
  def pet
  	@health += 5
  	self
  end

  def walk
  	@health -=1
  	self
  end

  def run
  	@health -=10
  	self
  end

  def displayHealth
  	puts "Your current health is #{@health}"
  	self
  end
end

Mammal.new.displayHealth