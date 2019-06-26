class Rb
	attr_reader :name #get method
	attr_writer :name #set method
	attr_accessor :a # both get and set
	def initialize(name)
		@name=name
	end

	# def get
	# 	return @name
	# end	
	# def set=(name)
	# 	@name=name
	# end
	def print
		puts "#{@name}!!!\n"
	end
end

object = Rb.new('Yash')
puts "This is class demo!!"
object.print
object.name
object.a = 'yash!'
puts object.name
object.print