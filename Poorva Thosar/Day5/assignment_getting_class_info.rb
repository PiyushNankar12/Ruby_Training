class ClassWithManyMethods
	#@instance_var1
	#@instance_var2
	def initialize(a,b)
		@instance_var1 = a
		@instance_var2 = b
	end
	public 
	def method1
	end
	def method2
	end
	def method3
	end
	private
	def method4
	end
	def method5
	end
	def method6
	end
	protected
	def method7
	end
	def method8
	end
	def method9
	end
end

obj = ClassWithManyMethods.new(4,5)

puts "All the methods in the class are :"
puts "#{obj.methods}\n\n\n"

puts "Public methods are :"
puts "#{obj.public_methods}\n\n\n"


puts "Private methods are :"
puts "#{obj.private_methods}\n\n\n"


puts "Protected methods are :"
puts "#{obj.protected_methods}\n\n\n"

puts "Instance variables are :"
puts "#{obj.instance_variables}\n\n\n"
