a = ["Strawberries", "Watermelon", "Raspberries", "Blueberries", "Pineapple"]
b = ["Rachael", "Elissa", "Vanessa", "Taryn", "Nicole", "Selena"]

#.at returns the element at a certain index
puts a.at(0)

#.fetch
#Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value.
puts a.fetch(5, 'cat')


#.delete
a.delete("Watermelon")

#length
puts a.length

#sort
puts a.sort_by { |word| word.length}
puts a.sort

#slice
puts b[2,4]

#shuffle
puts b.shuffle

#join
puts (a +b).join(" ")

#insert
puts b.insert(3, "Jordan", "Jean", "James", "Jill")
#if you use a negatives indices it will insert from the back of the array starting with -1
# b.insert (-3, 1,2,3)

#values_at() -> returns an array with values specified in the param
#e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
#Returns an array containing the elements in self corresponding to the given selector(s).

puts a.values_at(0,3,2)


