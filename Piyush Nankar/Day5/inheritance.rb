class Parent
	def method1
		puts "I am in public"
		method3
	end

  private
    def method2(name)
    	puts "I am in Private"
    	puts name
    end
  
  protected
    def method3
    	puts "I am in protected"
    end
end

class Child < Parent
	
	# def initialize
	# 	method1
	# 	method2("Piyush")
	# 	self.method3
	# end

	
	def method4
		method2("Shreyas")
		method3
	end
end

abc=Child.new
abc.method1
#abc.method4
