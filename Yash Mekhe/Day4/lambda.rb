def yash_each(&abc)
	#abc.call
	if block_given?
		print "Block is passed!!\n"
	else
		print "Block is not passed!!\n"
	end
	abc.call  
end

abc=->{ puts 'Yash!!'}
yash_each(abc)