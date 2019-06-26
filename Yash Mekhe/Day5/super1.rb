class A
	def initialize(name: "yash")
		@name=name
	end
	def print_name
		puts "Hi #{@name}!!"
	end
end

class B < A
	def initialize(name,age)
		@name=name
		@age=age
		super
	end
	def print_person
		puts "Name : #{@name} \t Age : #{@age}!!"
	end
end

object = B.new('Yash',21)

puts object.print_person
puts object.print_name