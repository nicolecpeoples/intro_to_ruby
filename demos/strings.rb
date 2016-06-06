#everything in ruby is an object

x = "Coding Dojo"

# puts x
# puts x.length
# puts x.class
# puts x.capitalize
# puts x.upcase
# puts x.downcase
# puts x[2]
# puts x.include?("Dojo") #looks to see if word includes what string is in parentheses. it is case sensitive
# puts "this word has the word 'Dojo'" if x.include? "dojo"

y = "john, charles, matt, joe"

puts y.split(",")
puts y.split(",").to_s

z = ""

puts "Z is empty" if z.empty?

puts "I am an instance of".class