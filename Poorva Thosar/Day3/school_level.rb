def find_school_level(grade)
	case grade
	when 1..5
		return "elementary"
	when 6..8
		return "middle school"
	when 9..12
		return "high_school"
	else
	    return "college"
	end
end

puts "Enter any number -- "
number = gets.chomp.to_i
puts find_school_level(number)	