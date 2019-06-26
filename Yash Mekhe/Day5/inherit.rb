class Parent
	def initialize(home)
		@home=home
	end
	def home
		puts "#{@home}"
	end
end

class Child < Parent
	def initialize(name,home)
		@name=name
		#super(home) # explicityly passing home to superclass
		#super() #it will pass 0 parameters to superclass
		super #if we write only super then it will pass name,home to superclass
	end
	def name
		puts "#{@name}"
	end
end


object=Child.new('yash','Beed')
object.home
object.name
#puts object.@home

# declaring method as private
# syntax:
# private
# 	def a
# 	def b
# 		...
# end

# or 

# def a

# end
# def b
# end

# private :a,:b