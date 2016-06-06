i = 0
num = 5

while i < num do 
	puts "Inside the loop i = #{i}"
	i +=1
end

#another option
i = 0
num = 5
begin
   puts "Inside the loop i = #{i}"
   i +=1
end while i< num

#for loop
for i in 0..5 
  puts "Value of local variable is #{i}" 
end 