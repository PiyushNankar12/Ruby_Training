def amt_validate(amt)
	if /[^-][\d]+[\.]*[\d]*/ =~ amt
		print "Valid amount!!\n"
	else
		print "Invalid amount!!\n"
	end
end

print "Enter amount :\n"
amt = gets
amt_validate(amt)
