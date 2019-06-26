class Abc
	def self.method #1st way for defining class method
		puts "Yash!!"
	end
	class << self # 2nd way for defining class method
		def a
			puts "Yash!!"
		end
		def b
			puts "Mekhe!!"
		end
	end
end
Abc.a
Abc.b