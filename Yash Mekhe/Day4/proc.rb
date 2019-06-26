def yash_each(abc)
	#abc.call
	if block_given?
		print "Block is passed!!\n"
	else
		print "Block is not passed!!\n"
	end
	puts "Start lambda"
	abc.call
	puts "End lambda"
end

def print_count(xyz)
	puts "Start proc"
	count=10
	xyz.call
	puts "End proc"
end

count=5
xyz = Proc.new do return "Proc" end
count=8
print_count(xyz)
abc =-> do return "lambda" end
yash_each(abc)

