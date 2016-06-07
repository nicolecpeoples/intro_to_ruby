#1 
# x = [3,5,1,2,7,9,8,13,25,32]

# def sumNums(arr)
# 	sum = 0
# 	arr.each do |x|
# 		sum += x
# 		puts "The sum of all these lovely numbers is %s" % sum.to_s
# 	end
# 	puts arr.find_all { |num| num > 10 }

# end

# sumNums(x)

#2
# names = [ "John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# def shuffleArray(arr)
# 	puts arr.shuffle
# 	puts arr.find_all { |x| x.length > 5}
	
# end

# shuffleArray(names)

#3
#create an array that has all 26 letters in the alphabet, shuffle the array and display the last letter in the array, the first letter of the array, if the first letter is a vowel, have it display a message. 
# def shuffleLetters()
# 	y = ('a' .. 'z').to_a.shuffle
	
# 	puts "the first letter is " + y.first
# 	if  %w(a e i o u).include?(y.first)
# 		puts "I am a vowel"
# 	end
# 	puts "the last letter is " + y.last
# 	puts y.to_s
# end



#  shuffleLetters()

# #4 generate an array with ten random numbers between 55-100

# def randomNumbers(val)
# 	while val > 0
# 		puts rand(55 .. 100)
# 		val = val -1
# 	end

# end

# randomNumbers(5)

#5 generate random numbers 55-100 and sort it showing smallest num at beginning. display all the numbers in the array . display min and max
# def randomNumbers(val)
# 	y = []
# 	while val > 0
# 		y.push(rand(55 .. 100))
# 		val = val -1

# 	end
# 	puts y.sort.to_s
# 	puts "the min of this array is " + y.min.to_s
# 	puts "the max of this array is " + y.max.to_s
# end

# randomNumbers(5)

#6 create a random string that is 5 characters long
# 65+rand(26)).chr creates a random character

# def randomString(val)
# 	string = ""
# 	while val >0
# 		string += (65+rand(26)).chr
# 		val = val -1
# 	end
# 	puts string
# end

# randomString(10)

#7 generate an array with 10 random strings that are 5 characters long
def multipleStrings(val)
	while val > 0
	 puts randomString(5)
	 val -= 1
	end
end

def randomString(val)
	string = ""
	while val >0
		string += (65+rand(26)).chr
		val = val -1
	end
	puts string
end

multipleStrings(10)