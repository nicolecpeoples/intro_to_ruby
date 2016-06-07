# def test
# 	puts "You are in a method"
# 	yield
# 	puts "You back in the method again"
# 	yield
# end
# test { puts "You are in the block"}

#yield will show again what is in the block

# def test
# 	yield(5)
# 	puts "You are in the method test"
# 	yield(30)
# end
# test { | i| puts "You are in the block #{i}"}

def square(num)
	puts "num is #{num}"
	x = yield(num)
	puts "x has a value of #{x}"

	y = yield(num) * x
	puts "y has a value of #{y}"
	# puts "yield(num) has a value of #{yield(num)}"
end

puts square(5) { | i | i *i}