class Access_instance_variable
	def initialize(name,surname)
		@name=name
		@surname=surname
	end

	def print_name
		puts "Hi #{@name} #{@surname} !!\n"
	end
end

object = Access_instance_variable.new('Rohit','Sharma')

puts "Instance variable @name = #{object.instance_variable_get(:@name)}\n"
puts "Instance variable @surname = #{object.instance_variable_get(:@surname)}\n"

object.print_name

object1 = Access_instance_variable.new('Yash','Mekhe')

puts "Instance variable @name = #{object1.instance_variable_get(:@name)}\n"
puts "Instance variable @surname = #{object1.instance_variable_get(:@surname)}\n"

object1.print_name
