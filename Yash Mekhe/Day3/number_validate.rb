def validate(number)
	if /[0-9]{2}-[1-9][0-9]{9}/ =~ number
		puts "Valid number!!\n"
	else
		puts "Invalid!!\n"
	end
end

puts "Enter number in format :"
num = gets
validate(num)
