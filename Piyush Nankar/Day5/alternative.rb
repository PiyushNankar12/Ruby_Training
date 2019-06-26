name="string"

class<<name
	def isstring?
		self=="string"
	end
end

puts name.isstring?
name1="string"
#puts name1.isstring?

class Piyush
	def initialize(name)
		@name=name
	end
end

abc=Piyush.new("Shreyas")
abc.instance_variable_set(:@name, 'dog')
puts abc.instance_variable_get(:@name)