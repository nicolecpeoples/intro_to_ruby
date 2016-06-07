a = %w[ant bear cat dog fox elephant]
#.any
#Passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } that will cause any? to return true if at least one of the collection members is not false or nil.

puts a.any? {|word| word.length >=3 }

#.each
a.each do |word|
	puts word
end

#.collect
#Returns a new array with the results of running block once for every element in enum.
puts (1..4).collect {|i| i*i}
puts (1..4).collect {"cat"}

#.map
#Invokes the given block once for each element of self, replacing the element with the value returned by the block. it's exactly like collect
puts a.map { |name| "I am an animal"}

#.detect /.find
#enumerator; returns the first for which block is not false.
puts (1..10).detect { | i| i % 5 == 0 and i %7 ==0 }
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }

#.find_All
puts (1..10).find_all {|i| i%3 ==0}

#.reject
#opposite of find all
puts (1..10).reject {|i| i%3 ==0}

#.upto(limit) -> iterates block up to the int number
puts 5.upto(12) { |i| print i, " " }

# .has_key?(key) -> true or false
# .has_value?(value) -> true or false
# .key(value) -> returns the key of an occurrence of a given value. If the value is not found, returns nil
# .keys -> returns a new array populated with the keys from the hash

