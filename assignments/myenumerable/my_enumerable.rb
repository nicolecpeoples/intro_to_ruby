require_relative 'MyEnumerable_module'

class Array
	include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i } 