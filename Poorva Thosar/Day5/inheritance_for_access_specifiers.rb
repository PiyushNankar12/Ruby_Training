# Ruby program to demonstrate that private 
# method can also be inherited 

class ParentClass

	# public method 
	def method_1 
	
		p "Public Method of class Geeks"
	
	end

	# defining the protected method 
	protected 

	def method_2 
		
		p "Protected Method of class Geeks"
	end

	# defining the private method 
	private 

	def method_3 
		
		p "Private Method of class Geeks"
		
	end
end


class ChildClass < ParentClass 
	
	def method_4 
		
		p "Public Method of Sudo Class"
		
		method_1 
		method_2 
		method_3 
	end
end

 
obj_sudo = ChildClass.new


obj_sudo.method_4 
