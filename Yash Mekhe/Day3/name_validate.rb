def name_validate(name)
	if /[a-zA-Z]+[\s]*[a-zA-Z]+[\s]*[a-zA-Z]+[\s]*$/ =~ name
		print "Valid name !!\n"
	else
		print "Invalid name !!\n"
    end
end

print "Enter name : \n"
name = gets
name_validate(name)