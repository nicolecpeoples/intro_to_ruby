#One thing we have not talked much about is the Ruby keyword of self. Self refers to whatever Class called that method. In Ruby, everything is a Class so self can mean a lot of different things. For our Cat example, we can put self right away and see what it is.
class Mammal
	def initialize
		puts 'I am alive!'
	end

	def breathe
		puts 'Inhale and exhale'
	end
end

class Cat < Mammal
  def jerk
    puts 'scratching you...'
  end 
  def speak  
    puts "Meow"  
  end
  def who_am_i
    puts self
  end
end  
chloe = Cat.new
chloe.who_am_i #prints the cat object

#Likewise, we can also return self to allow the chaining of methods.
class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self 
  end 
  def speak  
    puts "Meow"
    return self   
  end
  def who_am_i
    puts self
    return self 
  end
end  
chloe = Cat.new
chloe.speak.who_am_i.jerk

#the same as above without the return method

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self 
  end 
  def speak  
    puts "Meow"
    self   
  end
  def who_am_i
    puts self
    self 
  end
end  
chloe = Cat.new
chloe.speak.who_am_i.jerk