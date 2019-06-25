def grade(number)
	case number
	when 1..5
		print "Elementary!!\n"
	when 6..8
		print "Middle School!!\n"
	when 9..12
		print "High School!!\n"
	else
		print "College!!\n"
	end
end

print "Enter the grade :\n"
num = gets.to_i
grade(num)

