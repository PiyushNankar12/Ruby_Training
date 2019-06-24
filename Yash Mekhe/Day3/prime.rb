def prime(number)
	i=2
	flag=0
	while i<=number/2
		if number%i==0
			flag=1
			break
		end
		i=i+1
	end
	if flag==0
		return 1
	else
		return 0
	end
end

print "Enter the number to be tested:"
num = gets.to_i
if prime(num)==1
	print num , " is a prime!!\n"
else
	print num , " is not a prime!!\n"
end

