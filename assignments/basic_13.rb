x = (0..30)
#print 1-255

# puts (1..255).each { |i| print i, " "}

# #print odd numbers between 1 -255
# puts (1..255).find_all { |i|  i% 2 != 0}

#print sum
# sum = 0;
# x.each do |i|
#  	sum = sum + i
#  	puts "New number: #{i} Sum: #{ sum} "
# end

# #iterating through an array
 arr1 = [1,3,-2,7,9,13, -4, -1, -2]

# puts arr.map { |x| x} #or use collect

#find max
def findMax(arr)
	puts "the max is " + arr.max.to_s
end

findMax(arr1)

#get average

def findAvg(arr)
sum = 0.00
avg = 0.00
	arr.each do |i|
		puts i
		sum = sum + i
	end
	avg = sum / arr.length
	puts  "the average is #{avg}" 
end

findAvg(arr1)

#create array with odd numbers
y = (1..255).find_all { |x| x%2 != 0}

#greater than y
def greaterThan(arr, val)
	puts arr.count { |num| num > val}
end

greaterThan(arr1, 3)

#square the values
def squareValues(arr)
	arr.each do |i|
		puts "Num is #{i} the squared value is " + (i * i).to_s
	end
end

squareValues(arr1)

#eliminate negative numbers
def noNegs(arr)
	arr.collect do |x|
		if(x < 0)
			x =0
		
		else
			x
		end
	end
end

puts noNegs(arr1)

#max, min, average
def Values(arr)
	avg = 0
	arr.each do |x|
		avg += x
	end

	puts "the max of the array is " + arr.max.to_s
	puts "the min of the array is " + arr.min.to_s
	puts "the avg of the array is " + (avg/arr.length).to_s
end

Values(arr1)

 arr2 = [1,3,-2,7, -4,  -2]
#shifting the values in the array
def moveLeft(arr)
	arr.shift
	arr.push(0)
	arr.each do |x|
		x
	end
	# arr.push(0)
end

puts moveLeft(arr2)
#number to string

# def numToString(arr)
# 	arr.collect do |x|
# 		if(x < 0)
# 			x ="Dojo"
		
# 		else
# 			x
# 		end
# 	end
# end

# puts numToString(arr1).to_s





