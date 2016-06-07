#a hash is a dictionary like collection of unique keys and their values. Also called associative arrays, they are similar to arrays, but where an array uses intergers as its index, a hash allows you to use any object type

grades = { "Jane Does" => 10, "Jim Doe" => 6}

otherGrades = Hash.new
otherGrades["Dorothy Doe"] =9

options = { font_size: 10, font_family: "arial"}

puts options[:font_size]
puts grades


class Person
	attr_reader :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

person1 = Person.new  'Nicole Peoples', '36'

puts person1.name

puts Person.keys

# class Book
#   attr_reader :author, :title

#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def ==(other)
#     self.class === other and
#       other.author == @author and
#       other.title == @title
#   end

#   alias eql? ==

#   def hash
#     @author.hash ^ @title.hash # XOR
#   end
# end

# book1 = Book.new 'matz', 'Ruby in a Nutshell'
# book2 = Book.new 'matz', 'Ruby in a Nutshell'

# reviews = {}

# reviews[book1] = 'Great reference!'
# reviews[book2] = 'Nice and compact!'

# reviews.length #=> 1

#has_key
h = { "a" => 100, "b" => 200 }
puts h.has_key?("a")   #=> true
puts h.has_key?("z")   #=> false

#has_value
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

#.key(value) -> returns the key of an occurrence of a given value. If the value is not found, returns nil

h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

#keys
h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
h.keys   #=> ["a", "b", "c", "d"]