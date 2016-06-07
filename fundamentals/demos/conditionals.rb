x=1

if x>2
	puts "x is greater than 2"
elsif x <2 and x>0
	puts "x is 1"

else 
	puts "I can't guess the number"
end

y=5

puts "y is not 2" if y !=2
puts "y is greater than 2" if y >2
puts "y is not 2" unless y ==2

#cases

$age = 35

case $age
when 0 .. 2  # two dots are a range
	puts "baby"
when 3 ..6
	puts "little child"
when 7 ..12 
	puts "child"
when 13 .. 18
	puts "teenager"
else
	puts "adult"
end

#nil and false

# if ""
# 	puts "I am positive"
# end
# unless nil
# 	puts "I am negative"
# end

#inline conditionals
puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false

puts "matz"  unless []