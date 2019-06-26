class Parent
	# @public = 'public'
 #    @private = 'private'
	# @protected = 'protected'
	def initialize(name)
		@name=name
	end
	def print_public
		puts "Public #{@name} method !"
	end
	def print_private
		puts "Private #{@name} method !"
	end
	def print_protected
		puts "Protected #{@name} method !"
	end
	private :print_private  
	protected :print_protected
end

class Child < Parent
	def initialize(name)
		@name2=name
	end
	def print_name
		puts "Hi #{@name2} !!"
		print_public
		print_private
		print_protected
	end
end

object = Child.new('Yash')

object.print_name
object.print_public
object.print_protected
object.print_private




