#a class can inherit functionality from a superclass, sometimes referred to as a parent class or base class. Ruby does not support multiple inheritances and so a class in Ruby can only have one superclass.

class ParentClass
	def a_method
		puts 'b'
	end
end

class SomeClass < ParentClass  # < means inherit or extends
	def another_method
		puts 'a'
	end
end

instance = SomeClass.new
instance.another_method # => a
instance.a_method # => b

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
		puts 'scratching you ...'
	end
	def speak
		puts "Meow"
	end
end

chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'