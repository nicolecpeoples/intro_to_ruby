x = (1..5)

puts "Class Name: %s" % x.class

puts "it does include 3!" if x.include? 3

puts "The last number of htis range is " + x.last.to_s
puts "The max of this range is " + x.max.to_s
puts "The min of this range is " + x.min.to_s

#more complicated example
# to_a = to array  to_s = to string
y = ('a' ..'z')
puts y.to_a.shuffle.to_s