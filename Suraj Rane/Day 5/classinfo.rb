class Demo
	@@count=0
	def initialize(inp_name,inp_std)
		@name=inp_name
		@standard=inp_std
	end
	def printname
		puts @name
	end
	protected
	def printstd
		puts @standard
	end
end

d=Demo.new('Suraj',12)
puts Demo.methods()
puts Demo.public_instance_methods
puts Demo.class_variables
puts Demo.public_method_defined?('printname')
puts Demo.instance_methods
puts Demo.public_instance_methods
puts Demo.protected_instance_methods
puts d.instance_of?(Demo)
puts d.instance_variables
puts d.protected_methods

puts d.instance_variable_get(:@name)
d.instance_variable_set(:@name,'Rane')
puts d.instance_variable_get(:@name)



