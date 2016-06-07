puts "I am an example of a for loop"
arr= ["I", "code", "therefore", "I", "am"]
for i in 0..arr.count
	puts arr[i]
end

#a block is a snippet of code. In ruby, we like to call methods and pass that method to a block to make the code be more beautiful and versatile
puts "I am an example of an each loop"
arr2 = ["chunky", "bacon"]
arr2.each {|word| puts word }
puts ""
3.times { puts "WOW"}

#in ruby a number is an object that we can send message to. An Object is defined as an instance of a class. 

#24 + 8 is the same as below
#We are sending a :+ message tot he object 24 and following that with the object as an an argument. 
24.send(:+, 8)

print "hewoooo"
print "world\n"

=begin
	this is a long comment area
=end

#everything in here will be implemented before all of the other calls

BEGIN {
	puts "this is in the begin block"
}

#this will be at the end of the calls
END {
	puts "this is in the end block"
}