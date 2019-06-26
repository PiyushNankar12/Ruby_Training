
#case 1
def trees
	leaf = lambda { return "I'm blowing in the wind"}
	leaf.call
	return "I'm standing still."
end

puts "case1 ::"
puts trees


#case 2
def trees1
	leaf = lambda { puts "I'm blowing in the wind"}
	leaf.call
	return "I'm standing still."
end

puts "case2 ::"
puts trees1

#case 3
def trees2
	leaf = Proc.new { return "I'm blowing in the wind"}
	leaf.call
	return "I'm standing still."
end

puts "case3 ::"
puts trees2



