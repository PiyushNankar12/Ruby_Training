class Parent
	def initialize
		@count=nil
	end
	def method1
		puts 'Method 1'
	end
	def method2
		puts 'Method 2'
	end

	protected

	def method3
		puts 'Method 3'
	end
	def method4
		puts 'Method 4'
	end

	private
	def method5
		puts 'Method 5'
	end
end

class Child1 < Parent
	def check
		method1
		method2
		method3
		method4
		method5
	end
end

class Child2 < Parent
	def check
		method5
		# self.method5
	end
end

class Child3 < Parent
	def check
		method4
		self.method4
	end
end

o=Child1.new
o.check
# o.method1
# o.method2
# o.method3
# o.method4
# o.method5
# o2=Child2.new
# o2.check
o3=Child3.new
o3.check


