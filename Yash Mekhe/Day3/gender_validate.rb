def gender(gen)
	if /[Mm]/ =~ gen
		print "Male gender!!!\n"
	elsif /[fF]/ =~ gen
		print "Female gender!!!\n"
	else
		print "Invalid choice!!!\n"
	end
end

print "Enter gender :\n"
gen = gets
gender(gen)
