class Person
	def initialize(name, age)
		@name = name
		@age = age
	end
end

Poorva = Person.new("poorva", 20)

puts Poorva.instance_variable_get(:@name)
puts Poorva.instance_variable_get(:@age)