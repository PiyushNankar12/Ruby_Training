def find_prime(given_number)
	a = 2
	for x in 2..given_number/2
	   if given_number%x == 0
	   	return " NO"
	   end
	end   
	return " YES"
end

puts "Enter any number -- "
number = gets.chomp.to_i
print number
puts find_prime(number)