
person = { :first_name => "Nicole", :last_name => "Peoples", :age => 36, :occupation => "student"}

puts person[:first_name]

#delete
person.delete(:occupation)
puts person

puts person.empty?

puts person.has_key?(:occupation)
puts person.has_value?("Nicole")