begin
	retries ||=0
	puts "Try ##{ retries }"
	raise 'Error'
rescue
	retry if (retries+=1)<4
end
