class Mammal
  attr_accessor :alive
  def initialize
    @alive = true
    puts 'I am alive!'
    self
  end
  def breathe  
    puts 'Inhale and exhale' 
    self
  end  
end