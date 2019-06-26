class Ipl
	def initialize(name)
		@name=name
	end
	def print
		puts "Hi #{@name} !!\n"
	end
end

mumbai_indians = Ipl.new('yash')

def mumbai_indians.champion
		puts "Mumbai Indians are IPL Champions!!!\n"
	end

puts mumbai_indians.print
puts mumbai_indians.singleton_methods #prints singleton methods associated with object
puts mumbai_indians.champion

chennai_super_kings = Ipl.new('yash')
#puts chennai_super_kings.champion #this line will give an error saying : undefined method for class 
								   #this is because of singleton method for a object mumbai_indians
