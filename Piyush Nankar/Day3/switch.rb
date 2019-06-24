def check(x)
	case x
	  when 1..5
	     #print "Elementry"
	     return "Elementry"
	  when 6..8
	     #print "Middle school"
	      return "Middle School"
      when 9..12
      	 #print "College"
      	  return "High School"
       else
       	  #print ""
       	  return "College"
    end
end

puts "Please Enter the age"
x=gets.to_i
p=check(x)
puts "#{p}"