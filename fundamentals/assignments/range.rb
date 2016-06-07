x = (1..35)
#member returns true if obj is an element of the range, false otherwise
#can be switched with include?
puts x.member?(3)

puts "The max of x is %s" % x.max.to_s
puts "The min of x is %s"  % x.min.to_s
puts "the last number in the range is %s"  % x.last.to_s